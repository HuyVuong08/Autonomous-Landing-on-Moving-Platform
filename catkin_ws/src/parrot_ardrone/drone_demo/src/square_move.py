#! /usr/bin/env python

import rospy
import time
from std_msgs.msg import Empty
from geometry_msgs.msg import Twist

class MoveSquareClass(object):

    def __init__(self):
        self.ctrl_c = False
        self.rate = rospy.Rate(10)

    def publish_once_in_cmd_vel(self, cmd):
        """
        This is because publishing in topics sometimes fails teh first time you publish.
        In continuos publishing systems there is no big deal but in systems that publish only
    once it IS very important.
        """
        while not self.ctrl_c:
            connections = self._pub_cmd_vel.get_num_connections()
            if connections > 0:
                self._pub_cmd_vel.publish(cmd)
                rospy.loginfo("Publish in cmd_vel...")
                break
            else:
                self.rate.sleep()

    # function that stops the drone from any movement
    def stop_drone(self):
        rospy.loginfo("Stopping...")
        self._move_msg.linear.x = 0.0
        self._move_msg.angular.z = 0.0
        self.publish_once_in_cmd_vel(self._move_msg)

    # function that makes the drone turn 90 degrees
    def turn_drone(self):
        rospy.loginfo("Turning...")
        self._move_msg.linear.x = 0.0
        self._move_msg.angular.z = 1.0 # 1rad/s
        self.publish_once_in_cmd_vel(self._move_msg)

    # function that makes the drone move forward
    def move_forward_drone(self):
        rospy.loginfo("Moving forward...")
        self._move_msg.linear.x = 1.0
        self._move_msg.angular.z = 0.0
        self.publish_once_in_cmd_vel(self._move_msg)

    def convert_degree_to_rad(self, speed_deg, angle_deg):
        self.angular_speed_r = speed_deg * 3.1415927 / 180
        self.angle_r = angle_deg * 3.1415927 / 180
        return [self.angular_speed_r, self.angle_r]

    def move_square(self):
        # this callback is called when the action server is called.
        # this is the function that computes the Fibonacci sequence
        # and returns the sequence to the node that called the action server

        # helper variables
        r = rospy.Rate(1)

        # define the different publishers and messages that will be used
        self._pub_cmd_vel = rospy.Publisher('/cmd_vel', Twist, queue_size=1)
        self._move_msg = Twist()
        self._pub_takeoff = rospy.Publisher('/drone/takeoff', Empty, queue_size=1)
        self._takeoff_msg = Empty()
        self._pub_land = rospy.Publisher('/drone/land', Empty, queue_size=1)
        self._land_msg = Empty()

        # make the drone takeoff
        i=0
        while not i == 3:
            self._pub_takeoff.publish(self._takeoff_msg)
            rospy.loginfo('Taking off...')
            time.sleep(1)
            i += 1

        # define the seconds to move in each side of the square (which is taken from the goal) and the seconds to turn
        sideSeconds = 4
        # turnSeconds = 1.8 # Time to rotate pi/2 radian
        turnSeconds = 3.039 # Time to rotate pi/2 radian | set speed + acceleration throttle + set time
        stablizeSeconds = 2

        speed_d = 15 # degree/second
        angle_d = 90 # degree

        # Convert speed and angle from degree to radians
        self.convert_degree_to_rad(speed_d, angle_d)

        rospy.loginfo(self.angular_speed_r)
        rospy.loginfo(self.angle_r)

        i = 0
        for i in range(0, 4):

            # Logic that makes the robot move forward and turn
            self.move_forward_drone() # set speed 1m/s
            time.sleep(sideSeconds)
            self.stop_drone()
            time.sleep(stablizeSeconds)
            self.turn_drone() #set speed 1rad/s
            time.sleep(turnSeconds)
            self.stop_drone()
            time.sleep(stablizeSeconds)

            # the sequence is computed at 1 Hz frequency
            r.sleep()

        self.stop_drone()
        i=0
        while not i == 3:
            self._pub_land.publish(self._land_msg)
            rospy.loginfo('Landing...')
            time.sleep(1)
            i += 1

if __name__ == '__main__':
    rospy.init_node('move_square')
    move_square = MoveSquareClass()
    try:
        move_square.move_square()
    except rospy.ROSInterruptException:
        pass