#!/bin/bash

# Setup sources.list
echo 'Setting Up sources.list...'
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

# Setup Keys
echo 'Setting Up Yeys...'
sudo apt-get install -y curl # if you haven't already installed curl
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -

# Install ROS
echo 'Installing ROS...'
sudo apt-get update -y
sudo apt-get install -y ros-noetic-desktop-full

# Setup Enviroment
echo 'Setting Up Enviroment...'
echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc
source ~/.bashrc

# Install Dependencies for Building Packages
echo 'Installing Dependencies for Building Packages...'
sudo apt-get install -y python3-rosdep python3-rosinstall python3-rosinstall-generator python3-wstool build-essential
sudo rosdep init
rosdep update
