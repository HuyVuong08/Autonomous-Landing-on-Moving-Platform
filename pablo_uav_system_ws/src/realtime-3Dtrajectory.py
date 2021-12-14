import numpy as np
import matplotlib.pyplot as plt
import pandas as pd
from device_drone import *
from device_platform import *
import rospy
from std_msgs.msg import String
from geometry_msgs.msg import Point, Pose, PoseStamped

drone_x = 0.0
drone_y = 0.0
drone_z = 0.0

platform_x = 0.0
platform_y = 0.0
platform_z = 0.0

def gt_ardrone_callback(gt_ardrone):
    global drone_x, drone_y, drone_z
    drone_x = gt_ardrone.pose.position.x;
    drone_y = gt_ardrone.pose.position.y;
    drone_z = gt_ardrone.pose.position.z;
    rospy.loginfo("\n%f\n%f\n%f", drone_x, drone_y, drone_z)

def gt_summit_callback(gt_summit):
    global platform_x, platform_y, platform_z
    platform_x = gt_summit.pose.position.x;
    platform_y = gt_summit.pose.position.y;
    platform_z = gt_summit.pose.position.z;
    rospy.loginfo("\n%f\n%f\n%f", platform_x, platform_y, platform_z)

def realtime_3Dplot():
    # In ROS, nodes are uniquely named. If two nodes with the same
    # name are launched, the previous one is kicked off. The
    # anonymous=True flag means that rospy will choose a unique
    # name for our 'gt_platform_listener' node so that multiple gt_platform_listeners can
    # run simultaneously.

    rospy.init_node("gt_listener", anonymous=True)
    rospy.Subscriber("/groundtruth/ardrone", PoseStamped, gt_ardrone_callback)
    rospy.Subscriber("/groundtruth/summit", PoseStamped, gt_summit_callback)

    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()

if __name__ == '__main__':

    # declare drone and platform devices
    drone = Quadrotor()
    platform = Platform(width = 0.2, height = 0.1, length = 0.2)

    fig = plt.figure()
    ax = fig.gca(projection='3d')

    try:
        realtime_3Dplot()
    except rospy.ROSInterruptException:
        pass

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
        # ''' whenever receiving new data, update pose and tracjectory then draw them '''

        # # clear plot
        # plt.cla()

        # # # draw drone hardware and its tracjectory
        # # drone.update_pose(dx[i], dy[i], dz[i], 0,0,0, ax)
        # # drone.plot_tracjectory(ax)

        # # # draw platfrom hardware and its tracjectory
        # # platform.update_pose(px[i], py[i], pz[i], 0, ax)
        # # platform.plot_tracjectory(ax)

        # # # draw drone hardware and its tracjectory
        # # drone.update_pose(ardrone_x[i], ardrone_y[i], ardrone_z[i], 0,0,0, ax)
        # # drone.plot_tracjectory(ax)

        # # draw drone hardware and its tracjectory
        # drone.update_pose(drone_x, drone_y, drone_z, 0,0,0, ax)
        # drone.plot_tracjectory(ax)

        # # draw platfrom hardware and its tracjectory
        # platform.update_pose(platform_x, platform_y, platform_z + 0.5, 0, ax)
        # platform.plot_tracjectory(ax)

        # # add legend and some informations
        # ax.set_xlabel('Longitude')
        # ax.set_ylabel('Latitude')
        # ax.set_zlabel('Altitude')
        # ax.set_title('Realtime 3D Coorindate of Drone and Platform')
        # ax.legend()

        # # pause every 0.5 second
        # plt.pause(0.00000000000000000000000000000001)

    # plt.show()
