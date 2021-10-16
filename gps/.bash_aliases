cd
export DISPLAY=:0
export LC_ALL=C
export PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

alias rosenv='export | grep ROS'
alias public_ip="curl -s checkip.dyndns.org | sed -e 's/.*Current IP Address: //' -e 's/<.*$//'"
alias VisualStates_py="/opt/VisualStates/bin/visualStates_py"

# Source workspaces
source /usr/share/gazebo/setup.sh
source /opt/ros/latest/setup.bash
source /home/simulations/public_sim_ws/devel/setup.bash;
source ~/catkin_ws/devel/setup.bash &> /dev/null;
source ~/simulation_ws/devel/setup.bash &> /dev/null

# Configure ROS environment
export ROS_MASTER_URI=http://master:11311

(rospack profile &> /dev/null &)
cd