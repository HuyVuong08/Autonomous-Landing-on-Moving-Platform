import numpy as np
import matplotlib.pyplot as plt
from device_drone import *
from device_platform import *

###########################################
# Realtime 3D monitor system
###########################################
fig_3D = plt.figure("Realtime 3D monitor system")
ax_3D = fig_3D.gca(projection='3d')

###########################################
# Realtime 2D monitor system
###########################################
fig_2D = plt.figure("Realtime 2D monitor system")
ax_2D= fig_2D.gca()

# declare drone and platform devices
drone = Quadrotor()
platform = Platform(width = 0.2, height = 0.1, length = 0.2)

data_size = 100
# sample data for drone (denote: dx, dy, dz)
# just generate sample data for drawing drone
theta = np.linspace(-4 * np.pi, 4 * np.pi, data_size)
dz = np.linspace(-2, 2, data_size)
r = dz**2 + 1
dx = r * np.sin(theta)
dy = r * np.cos(theta)

# sample data for platform (denote: px, py, pz)
# just generate sample data for drawing platform
pz = np.linspace(0, 0, data_size)
t = np.linspace(0, 1, data_size)
px = t * np.sin(20 * t)
py = t * np.cos(20 * t)

for i in range (len(dx)):

    ''' whenever receiving new data, update pose and tracjectory then draw them '''

    # clear plot
    # plt.cla()
    # ax_3D.cla()
    ax_2D.cla()

    # draw drone hardware and its tracjectory
    drone.update_pose_2D(dx[i], dy[i], dz[i], 0,0,0, ax_3D)
    # drone.plot_tracjectory(ax_3D)
    drone.plot_tracjectory_2D(ax_2D)

    # draw platfrom hardware and its tracjectory
    platform.update_pose_2D(px[i], py[i], pz[i], 0, ax_3D)
    # platform.plot_tracjectory(ax_3D)
    platform.plot_tracjectory_2D(ax_2D)


    # add legend and some informations
    ax_3D.set_xlabel('Longitude')
    ax_3D.set_ylabel('Latitude')
    ax_3D.set_zlabel('Attitude')
    ax_3D.set_title('Realtime 3D Coorindate of Drone and Platform')
    ax_3D.legend()

    # add legend and some informations
    ax_2D.set_xlabel('Longitude')
    ax_2D.set_ylabel('Latitude')
    ax_2D.set_title('Realtime 2D Coorindate of Drone and Platform')
    ax_2D.legend()

    # pause every 0.5 second
    plt.pause(0.5)

plt.show()
