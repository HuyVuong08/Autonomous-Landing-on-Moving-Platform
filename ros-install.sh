#!/bin/bash

# Install basic Linux Package
echo 'Installing basic Linux Package...'
sudo apt-get install -y libavcodec-dev libsdl1.2-dev xsltproc libbullet-dev libsdl1.2-dev libgoogle-glog-dev protobuf-compiler python-wstool

# Install Git
echo 'Installing Git...'
sudo apt-get install -y git

# Install Terminator
echo 'Installing Terminator...'
sudo apt-get install -y terminator

# Install Snap
echo 'Installing Snap...'
sudo apt-get install -y snap

# Install VSCode
echo 'Installing VSCode...'
sudo snap install --classic code

# Setup sources.list
echo 'Setting Up sources.list...'
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

# Setup Keys
echo 'Setting Up Keys...'
sudo apt-get install -y curl # if you haven't already installed curl
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -

# Install ROS
echo 'Installing ROS...'
sudo apt-get update -y
sudo apt-get install -y ros-kinetic-desktop-full

# Setup Enviroment
echo 'Setting Up Enviroment...'
echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc
source ~/.bashrc

# Install Dependencies for Building Packages
echo 'Installing Dependencies for Building Packages...'
sudo apt-get install -y python-rosdep python-rosinstall python-rosinstall-generator python-wstool build-essential
sudo rosdep init
rosdep update

source /opt/ros/kinetic/setup.bash
sudo apt-get install -y ros-kinetic-rqt ros-kinetic-rqt-common-plugins ros-kinetic-hector-gazebo ros-kinetic-hector-localization ros-kinetic-hector-slam ros-kinetic-hector-slam ros-kinetic-hector-models ros-kinetic-hardware-interface ros-kinetic-controller-interface ros-kinetic-gazebo-ros-control ros-kinetic-ar-track-alvar ros-kinetic-twist-mux ros-kinetic-ros-control python-pip gnome-themes-standard

pip install --user --upgrade pip
pip install --user untangle

