import numpy as np
import matplotlib.pyplot as plt
import pandas as pd
from device_drone import *
from device_platform import *

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

input_dir = "~/pablo/ws/log/trajectories"
print("Reading from", input_dir)

trajectories_pred = pd.read_csv(input_dir + "/trajectories_pred.csv")

# extract data from DataFrame
ardrone_x = trajectories_pred['aX'].tolist()
ardrone_y = trajectories_pred['aY'].tolist()
ardrone_z = trajectories_pred['aZ'].tolist()
summit_x = trajectories_pred['sX'].tolist()
summit_y = trajectories_pred['sY'].tolist()
summit_z = trajectories_pred['sZ'].tolist()

print(ardrone_x[0], ardrone_y[0], ardrone_z[0])

fig = plt.figure()
ax = fig.gca(projection='3d')

# for i in range (len(dx)):
for i in range (0, len(ardrone_x), 10):

    ''' whenever receiving new data, update pose and tracjectory then draw them '''

    # clear plot
    plt.cla()

    # # draw drone hardware and its tracjectory
    # drone.update_pose(dx[i], dy[i], dz[i], 0,0,0, ax)
    # drone.plot_tracjectory(ax)

    # # draw platfrom hardware and its tracjectory
    # platform.update_pose(px[i], py[i], pz[i], 0, ax)
    # platform.plot_tracjectory(ax)

    # draw drone hardware and its tracjectory
    drone.update_pose(ardrone_x[i], ardrone_y[i], ardrone_z[i], 0,0,0, ax)
    drone.plot_tracjectory(ax)

    # draw platfrom hardware and its tracjectory
    platform.update_pose(summit_x[i], summit_y[i], summit_z[i], 0, ax)
    platform.plot_tracjectory(ax)

    # add legend and some informations
    ax.set_xlabel('Longitude')
    ax.set_ylabel('Latitude')
    ax.set_zlabel('Attitude')
    ax.set_title('Realtime 3D Coorindate of Drone and Platform')
    ax.legend()

    # pause every 0.5 second
    plt.pause(0.00000000000000000000000000000001)

plt.show()
