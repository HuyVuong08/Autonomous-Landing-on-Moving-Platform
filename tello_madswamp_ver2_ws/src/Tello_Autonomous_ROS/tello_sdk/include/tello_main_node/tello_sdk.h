//
// Created by madswamp on 11/04/21.
//

#ifndef ACESS_TELLO_DATA_TELLO_SDK_H
#define ACESS_TELLO_DATA_TELLO_SDK_H

#include <ros/ros.h>
#include <sys/socket.h>
#include <sys/types.h>
#include <arpa/inet.h>
#include <netinet/in.h>
#include <iterator>
#include <netdb.h>
#include <boost/thread/thread.hpp>
#include <signal.h>


#define TELLO_COMMAND_PORT 8889
#define TELLO_STATE_PORT 8890



const char* const Tello_Stream_Adress{"udp://0.0.0.0:11111"};

class tello_sdk{
public:
    tello_sdk();

    ~tello_sdk();

    std::string get_tello_status();

    int set_up_tello_sdk();

    int start_video_stream();

    int send_command_to_tello(std::string command);
private:
    int tello_socket_command,tello_socket_state;

    const char *tello_ip="192.168.10.1";

    struct sockaddr_in servaddr_socket_command,servaddr_socket_state,servaddr_socket_send_commands;

    int SocketToPort(int socket,sockaddr_in socket_info);

    void FillSocketsaddr();

    int start_tello_sdk();

    int find_command_socket_data(const char *socket_ip,int port);

    std::string receive_tello_response(int socketfile,sockaddr_in socketaddr,int flag);

    std::string get_tello_info(std::string parameter);
};


#endif //ACESS_TELLO_DATA_TELLO_SDK_H
