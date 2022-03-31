//
// Created by madswamp on 11/04/21.
//

#include "../../include/tello_main_node/tello_sdk.h"

int tello_sdk::set_up_tello_sdk()
{
    FillSocketsaddr();
    if(!SocketToPort(tello_socket_command,servaddr_socket_command))
    {
        return 0;
    }
    if(!SocketToPort(tello_socket_state,servaddr_socket_state))
    {
        return 0;
    }
    if(!find_command_socket_data(tello_ip,TELLO_COMMAND_PORT))
    {
        return 0;
    }
    if(!start_tello_sdk())
    {
        return 0;
    }

    ROS_INFO_STREAM("Aircraft Battery (%): " << get_tello_info("battery?"));
    ROS_INFO_STREAM("Aircraft Temperature (Celcius): " << get_tello_info("temp?"));
    ROS_INFO_STREAM("Wifi Noise Level (SNR)(dB): " << get_tello_info("wifi?"));
    return 1;
}

int tello_sdk::SocketToPort(int socket,sockaddr_in socket_info)
{
    int result = bind(socket, reinterpret_cast<sockaddr*>(&socket_info),sizeof(socket_info));
    if (result == -1)
    {
        return 0;
    }
    return 1;
}

int tello_sdk::find_command_socket_data(const char *socket_ip,int port)
{
    addrinfo* data;
    addrinfo hints{};
    hints.ai_family = AF_INET;
    hints.ai_socktype = SOCK_DGRAM;
    std::string s = std::to_string(port);

    int result = getaddrinfo(socket_ip, s.c_str(), &hints, &data);
    if (result != 0)
    {
        return 0;
    }

    memcpy(&servaddr_socket_send_commands, data->ai_addr, data->ai_addrlen);
    freeaddrinfo(data);

    return 1;
}

void tello_sdk::FillSocketsaddr()
{
    servaddr_socket_command.sin_family=AF_INET;
    servaddr_socket_command.sin_port=htons(TELLO_COMMAND_PORT);
    servaddr_socket_command.sin_addr.s_addr=INADDR_ANY;

    servaddr_socket_state.sin_family=AF_INET;
    servaddr_socket_state.sin_port=htons(TELLO_STATE_PORT);
    servaddr_socket_state.sin_addr.s_addr=INADDR_ANY;
}

int tello_sdk::start_tello_sdk()
{
    std::string message_received{"No Response"};
    int cnt=0;
    while(receive_tello_response(tello_socket_command,servaddr_socket_command,MSG_DONTWAIT).size()==0)
    {
        if(cnt==20)
        {
            return 0;
        }
        while(!send_command_to_tello("command"));
        ros::Duration(0.1).sleep();
        cnt++;
    }
    ROS_INFO("Tello SDK Started With Success\n");
    return 1;
}

std::string tello_sdk::receive_tello_response(int socketfile,sockaddr_in socketaddr, int flag)
{
    int message_size{300};
    std::vector<unsigned char> message(message_size, '\0');
    socklen_t addr_len{sizeof(socketfile)};
    int n = recvfrom(socketfile, message.data(), message_size, flag,
                          reinterpret_cast<sockaddr*>(&socketaddr), &addr_len);
    if(n==-1)
    {
        return "";
    }
    int size_message=n;
    if (size_message < 1)
    {
        return "";
    }
    std::string final_message_received{message.cbegin(), message.cend()};
    final_message_received.erase(final_message_received.find_last_not_of(" \n\r\t") + 1);
    return final_message_received;
}

int tello_sdk::send_command_to_tello(std::string command)
{
    const std::vector<unsigned char> command_vector{command.cbegin(), command.cend()};
    int n=sendto(tello_socket_command,command_vector.data(),command_vector.size(),0,
                 (const struct sockaddr *) &servaddr_socket_send_commands, sizeof(servaddr_socket_send_commands));
    if (n == -1)
    {
        return 0;
    }
    return 1;
}

tello_sdk::tello_sdk()
{
    ROS_INFO("Starting Tello SDK");
    tello_socket_command = socket(AF_INET, SOCK_DGRAM, 0);
    tello_socket_state = socket(AF_INET, SOCK_DGRAM, 0);
}

tello_sdk::~tello_sdk()
{
    close(tello_socket_command);
    close(tello_socket_state);
    ros::shutdown();
}

std::string tello_sdk::get_tello_info(std::string parameter)
{
    std::string data;
    while(!send_command_to_tello(parameter));
    while((data=receive_tello_response(tello_socket_command,servaddr_socket_command,MSG_DONTWAIT)).size()==0);
    return data;
}

int tello_sdk::start_video_stream()
{
    int cnt=0;
    while(receive_tello_response(tello_socket_command,servaddr_socket_command,MSG_DONTWAIT).size()==0)
    {
        if(cnt==20)
        {
            return 0;
        }
        while(!send_command_to_tello("streamon"));
        ros::Duration(0.1).sleep();
        cnt++;
    }
    return 1;
}

std::string tello_sdk::get_tello_status()
{
    std::string status;
    while((status=receive_tello_response(tello_socket_state,servaddr_socket_state,MSG_DONTWAIT)).size()<0);
    return status;
}


