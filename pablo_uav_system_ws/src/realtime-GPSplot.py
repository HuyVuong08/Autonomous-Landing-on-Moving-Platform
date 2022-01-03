import numpy as np
# import matplotlib
# matplotlib.use('Agg')
import matplotlib.pyplot as plt
import pandas as pd
from device_drone import *
from device_platform import *
from device_gps import *
from device_latlong import *
import rospy
from std_msgs.msg import String
from geometry_msgs.msg import Point, Pose, PoseStamped
from nav_msgs.msg import Odometry
from sensor_msgs.msg import NavSatFix
class Realtime_2Dplot:

    drone_x = 0.0
    drone_y = 0.0
    drone_z = 0.0

    platform_x = 0.0
    platform_y = 0.0
    platform_z = 0.0

    gps_summit_x = 0.0
    gps_summit_y = 0.0
    unplotted_gpsData = 0

    gps_summit_lat = 0.0
    gps_summit_long = 0.0

    # declare drone and platform devices
    drone = Quadrotor()
    platform = Platform(width = 0.2, height = 0.1, length = 0.2)
    gps_data = GPS()
    latlong_data = GPS_latlong()

    # fig_3D = plt.figure("Realtime 3D monitor system")
    # ax_3D = fig_3D.gca(projection='3d')

    fig_2D = plt.figure("Realtime 2D monitor system")
    ax_2D = fig_2D.gca()

    def __init__(self):

        # In ROS, nodes are uniquely named. If two nodes with the same
        # name are launched, the previous one is kicked off. The
        # anonymous=True flag means that rospy will choose a unique
        # name for our 'gt_platform_listener' node so that multiple gt_platform_listeners can
        # run simultaneously.
        rospy.init_node("realtime_2Dplot", anonymous=True)

        # Timer for plotting received ground truth
        rospy.Timer(rospy.Duration(0.1), self.plot_data)

        rospy.Subscriber("/summit_xl/mavros/gps/fix", NavSatFix, self.latlong_summit_callback)

        # spin() simply keeps python from exiting until this node is stopped
        # rospy.spin()
        plt.show(block=True)

    def latlong_summit_callback(self, latlong_summit):
        self.gps_summit_lat = latlong_summit.latitude
        self.gps_summit_long = latlong_summit.longitude
        rospy.loginfo("latitude, longitude: %f, %f", self.gps_summit_lat, self.gps_summit_long)

    def plot_data(self, event):

        # clear plot
        # plt.cla()
        # self.ax_3D.cla()
        self.ax_2D.cla()

        # draw self.latlong hardware and its tracjectory
        self.latlong_data.update_pose_2D(self.gps_summit_lat, self.gps_summit_long, 0,0,0,0, self.ax_2D) #
        # self.drone.plot_tracjectory(self.ax_3D)
        self.latlong_data.plot_tracjectory_2D(self.ax_2D)

        # add legend and some informations
        # self.ax_3D.set_xlabel('Longitude')
        # self.ax_3D.set_ylabel('Latitude')
        # self.ax_3D.set_zlabel('Altitude')
        # self.ax_3D.set_title('Realtime 3D Coorindate of Drone and Platform')
        # self.ax_3D.legend()

        # add legend and some informations
        self.ax_2D.set_xlabel('Latitude')
        self.ax_2D.set_ylabel('Longitude')
        self.ax_2D.set_title('Realtime latitude and longitude')
        self.ax_2D.legend(loc ="best")
        self.ax_2D.set_aspect('equal')

        # pause every 0.5 second
        plt.pause(0.0000000000000000001)

if __name__=='__main__':
    try:
        Realtime_2Dplot()
    except rospy.ROSInterruptException:
        pass
