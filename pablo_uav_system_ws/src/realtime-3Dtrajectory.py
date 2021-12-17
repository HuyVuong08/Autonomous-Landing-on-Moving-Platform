import numpy as np
# import matplotlib
# matplotlib.use('Agg')
import matplotlib.pyplot as plt
import pandas as pd
from device_drone import *
from device_platform import *
import rospy
from std_msgs.msg import String
from geometry_msgs.msg import Point, Pose, PoseStamped

class Realtime_3Dplot:

    drone_x = 0.0
    drone_y = 0.0
    drone_z = 0.0

    platform_x = 0.0
    platform_y = 0.0
    platform_z = 0.0

    new_dataPoint = False

    # declare drone and platform devices
    drone = Quadrotor()
    platform = Platform(width = 0.2, height = 0.1, length = 0.2)

    fig_3D = plt.figure("Realtime 3D monitor system")
    ax_3D = fig_3D.gca(projection='3d')

#     fig_2D = plt.figure("Realtime 2D monitor system")
#     ax_2D = fig_2D.gca()

    def __init__(self):

        # In ROS, nodes are uniquely named. If two nodes with the same
        # name are launched, the previous one is kicked off. The
        # anonymous=True flag means that rospy will choose a unique
        # name for our 'gt_platform_listener' node so that multiple gt_platform_listeners can
        # run simultaneously.
        rospy.init_node("realtime_3Dplot", anonymous=True)

        # Timer for plotting received ground truth
        rospy.Timer(rospy.Duration(0.1), self.plot_groundtruth)

        rospy.Subscriber("/groundtruth/ardrone", PoseStamped, self.gt_ardrone_callback)
        rospy.Subscriber("/groundtruth/summit", PoseStamped, self.gt_summit_callback)

        # spin() simply keeps python from exiting until this node is stopped
        # rospy.spin()
        plt.show(block=True)

    def gt_ardrone_callback(self, gt_ardrone):
        # global drone_x, drone_y, drone_z
        self.drone_x = gt_ardrone.pose.position.x;
        self.drone_y = gt_ardrone.pose.position.y;
        self.drone_z = gt_ardrone.pose.position.z;
        # rospy.loginfo("\n%f\n%f\n%f", self.drone_x, self.drone_y, self.drone_z)


    def gt_summit_callback(self, gt_summit):
        # global platform_x, platform_y, platform_z
        self.platform_x = gt_summit.pose.position.x;
        self.platform_y = gt_summit.pose.position.y;
        self.platform_z = gt_summit.pose.position.z;
        # rospy.loginfo("\n%f\n%f\n%f", platform_x, platform_y, platform_z)

    def plot_groundtruth(self, event):
        rospy.loginfo("Plot")
        rospy.loginfo("\n%f\n%f\n%f", self.platform_x, self.platform_y, self.platform_z)

        # clear plot
        plt.cla()
        # self.ax_3D.cla()
#         self.ax_2D.cla()

        # draw self.drone hardware and its tracjectory
        self.drone.update_pose(self.drone_x, self.drone_y, self.drone_z, 0,0,0, self.ax_3D)
        self.drone.plot_tracjectory(self.ax_3D)
#         self.drone.plot_tracjectory_2D(self.ax_2D)

        # draw platfrom hardware and its tracjectory
        self.platform.update_pose(self.platform_x, self.platform_y, self.platform_z + 0.5, 0, self.ax_3D)
        self.platform.plot_tracjectory(self.ax_3D)
#         self.platform.plot_tracjectory_2D(self.ax_2D)

        # add legend and some informations
        self.ax_3D.set_xlabel('Longitude')
        self.ax_3D.set_ylabel('Latitude')
        self.ax_3D.set_zlabel('Altitude')
        self.ax_3D.set_title('Realtime 3D Coorindate of Drone and Platform')
        self.ax_3D.legend()

        # add legend and some informations
#         self.ax_2D.set_xlabel('Longitude')
#         self.ax_2D.set_ylabel('Latitude')
#         self.ax_2D.set_title('Realtime 2D Coorindate of Drone and Platform')
#         self.ax_2D.legend()

        # pause every 0.5 second
        plt.pause(0.0000000000000000001)

if __name__=='__main__':
    try:
        Realtime_3Dplot()
    except rospy.ROSInterruptException:
        pass

# ''' whenever receiving new data, update pose and tracjectory then draw them '''

# rospy.loginfo("Prepare to plot")
# # declare drone and platform devices
# drone = Quadrotor()
# platform = Platform(width = 0.2, height = 0.1, length = 0.2)

# fig_3D = plt.figure()
# ax_3D = fig_3D.gca(projection='3d')

# dataPoint_no = 0

# while dataPoint_no < 100:
    # rospy.loginfo("Plotting")
    # # clear plot
    # plt.cla()

    # # # draw drone hardware and its tracjectory
    # # drone.update_pose(dx[i], dy[i], dz[i], 0,0,0, ax_3D)
    # # drone.plot_tracjectory(ax_3D)

    # # # draw platfrom hardware and its tracjectory
    # # platform.update_pose(px[i], py[i], pz[i], 0, ax_3D)
    # # platform.plot_tracjectory(ax_3D)

    # # # draw drone hardware and its tracjectory
    # # drone.update_pose(ardrone_x[i], ardrone_y[i], ardrone_z[i], 0,0,0, ax_3D)
    # # drone.plot_tracjectory(ax_3D)

    # # draw drone hardware and its tracjectory
    # drone.update_pose(Realtime_3Dplot.drone_x, Realtime_3Dplot.drone_y, Realtime_3Dplot.drone_z, 0,0,0, ax_3D)
    # drone.plot_tracjectory(ax_3D)

    # # draw platfrom hardware and its tracjectory
    # platform.update_pose(Realtime_3Dplot.platform_x, Realtime_3Dplot.platform_y, Realtime_3Dplot.platform_z + 0.5, 0, ax_3D)
    # platform.plot_tracjectory(ax_3D)

    # # add legend and some informations
    # ax_3D.set_xlabel('Longitude')
    # ax_3D.set_ylabel('Latitude')
    # ax_3D.set_zlabel('Altitude')
    # ax_3D.set_title('Realtime 3D Coorindate of Drone and Platform')
    # ax_3D.legend()

    # # pause every 0.5 second
    # plt.pause(0.00000000000000000000000000000001)
    # dataPoint_no+=1

# plt.show()

# rospy.Timer(rospy.Duration(0.1), Realtime_3Dplot.plot_groundtruth)
# data_size = 100
# # sample data for drone (denote: dx, dy, dz)
# # just generate sample data for drawing drone
# theta = np.linspace(-4 * np.pi, 4 * np.pi, data_size)
# dz = np.linspace(-2, 2, data_size)
# r = dz**2 + 1
# dx = r * np.sin(theta)
# dy = r * np.cos(theta)

# # sample data for platform (denote: px, py, pz)
# # just generate sample data for drawing platform
# pz = np.linspace(0, 0, data_size)
# t = np.linspace(0, 1, data_size)
# px = t * np.sin(20 * t)
# py = t * np.cos(20 * t)

# input_dir = "~/pablo/ws/log/trajectories"
# print("Reading from", input_dir)

# trajectories_pred = pd.read_csv(input_dir + "/trajectories_pred.csv")

# # extract data from DataFrame
# ardrone_x = trajectories_pred['aX'].tolist()
# ardrone_y = trajectories_pred['aY'].tolist()
# ardrone_z = trajectories_pred['aZ'].tolist()
# summit_x = trajectories_pred['sX'].tolist()
# summit_y = trajectories_pred['sY'].tolist()
# summit_z = trajectories_pred['sZ'].tolist()

# print(ardrone_x[0], ardrone_y[0], ardrone_z[0])

# # for i in range (len(dx)):
# for i in range (0, len(ardrone_x), 8):

    # while True:
