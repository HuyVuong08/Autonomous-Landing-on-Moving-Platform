#!/bin/bash

sudo apt-get remove -y libavcodec-dev libsdl1.2-dev xsltproc libbullet-dev libsdl1.2-dev libgoogle-glog-dev protobuf-compiler python-wstool

sudo apt-get remove -y ros-kinetic-desktop-full

sudo apt-get remove -y python-rosdep python-rosinstall python-rosinstall-generator python-wstool build-essential

sudo apt-get remove -y ros-kinetic-rqt ros-kinetic-rqt-common-plugins ros-kinetic-hector-gazebo ros-kinetic-hector-localization ros-kinetic-hector-slam ros-kinetic-hector-slam ros-kinetic-hector-models ros-kinetic-hardware-interface ros-kinetic-controller-interface ros-kinetic-gazebo-ros-control ros-kinetic-ar-track-alvar ros-kinetic-twist-mux ros-kinetic-ros-control python-pip gnome-themes-standard ros-kinetic-joy

sudo apt-get remove -y ros-kinetic-ros-control ros-kinetic-gazebo-ros-pkgs ros-kinetic-gazebo-ros-control ros-kinetic-robotnik-msgs ros-kinetic-robotnik-sensors ros-kinetic-geographic-info gsl-bin libgsl0-dev ros-kinetic-robot-localization ros-kinetic-hector-pose-estimation libnewmat10-dev ros-kinetic-joint-state-controller ros-kinetic-move-base ros-kinetic-teb-local-planner ros-kinetic-amcl ros-kinetic-map-server ros-kinetic-gmapping ros-kinetic-costmap-prohibition-layer ros-kinetic-velocity-controllers ros-kinetic-message-to-tf ros-kinetic-mavros-msgs ros-kinetic-hector-nav-msgs ros-kinetic-ardrone-autonomy

sudo apt-get autoremove -y
