"""
Class for plotting a quadrotor
Author: Daniel Ingram (daniel-s-ingram)
Binh-Tran added some feature for drawing his team problem.
"""

from math import cos, sin
import numpy as np
from numpy.lib.function_base import select

class GPS():
    def __init__(self, x=0, y=0, z=0, roll=0, pitch=0, yaw=0, size=0.25):
        # 4 air-blades
        self.p1 = np.array([size / 2, 0, 0, 1]).T
        self.p2 = np.array([-size / 2, 0, 0, 1]).T
        self.p3 = np.array([0, size / 2, 0, 1]).T
        self.p4 = np.array([0, -size / 2, 0, 1]).T

        # tracjectory data for drone
        self.x_data = []
        self.y_data = []
        self.z_data = []

    def update_pose(self, x, y, z, roll, pitch, yaw, ax):
        self.x = x
        self.y = y
        self.z = z
        self.roll = roll
        self.pitch = pitch
        self.yaw = yaw

        self.x_data.append(x)
        self.y_data.append(y)
        self.z_data.append(z)
        self.plot(ax)

    def update_pose_2D(self, x, y, z, roll, pitch, yaw, ax): #
        self.x = x
        self.y = y
        self.z = z
        self.roll = roll
        self.pitch = pitch
        self.yaw = yaw

        self.x_data.append(x)
        self.y_data.append(y)
        self.z_data.append(z)
        # self.plot(ax)
        ax.plot(self.x, self.y)

    def transformation_matrix(self):
        x = self.x
        y = self.y
        z = self.z
        roll = self.roll
        pitch = self.pitch
        yaw = self.yaw
        return np.array(
            [[cos(yaw) * cos(pitch), -sin(yaw) * cos(roll) + cos(yaw) * sin(pitch) * sin(roll), sin(yaw) * sin(roll) + cos(yaw) * sin(pitch) * cos(roll), x],
             [sin(yaw) * cos(pitch), cos(yaw) * cos(roll) + sin(yaw) * sin(pitch)
              * sin(roll), -cos(yaw) * sin(roll) + sin(yaw) * sin(pitch) * cos(roll), y],
             [-sin(pitch), cos(pitch) * sin(roll), cos(pitch) * cos(yaw), z]
             ])

    def plot(self, ax):  # pragma: no cover
        T = self.transformation_matrix()

        p1_t = np.matmul(T, self.p1)
        p2_t = np.matmul(T, self.p2)
        p3_t = np.matmul(T, self.p3)
        p4_t = np.matmul(T, self.p4)

        # draw drone hardware
        ax.plot([p1_t[0], p2_t[0], p3_t[0], p4_t[0]],
                     [p1_t[1], p2_t[1], p3_t[1], p4_t[1]],
                     [p1_t[2], p2_t[2], p3_t[2], p4_t[2]], 'k.')

        ax.plot([p1_t[0], p2_t[0]], [p1_t[1], p2_t[1]],
                     [p1_t[2], p2_t[2]], 'r-')
        ax.plot([p3_t[0], p4_t[0]], [p3_t[1], p4_t[1]],
                     [p3_t[2], p4_t[2]], 'r-')

    def plot_2D(self, ax):  # pragma: no cover
        # T = self.transformation_matrix()

        # p1_t = np.matmul(T, self.p1)
        # p2_t = np.matmul(T, self.p2)
        # p3_t = np.matmul(T, self.p3)
        # p4_t = np.matmul(T, self.p4)

        # draw drone hardware
        # ax.plot([p1_t[0], p2_t[0], p3_t[0], p4_t[0]],
                     # [p1_t[1], p2_t[1], p3_t[1], p4_t[1]],
                     # [p1_t[2], p2_t[2], p3_t[2], p4_t[2]], 'k.')

        # ax.plot([p1_t[0], p2_t[0]], [p1_t[1], p2_t[1]],
                     # [p1_t[2], p2_t[2]], 'r-')
        # ax.plot([p3_t[0], p4_t[0]], [p3_t[1], p4_t[1]],
                     # [p3_t[2], p4_t[2]], 'r-')

        ax.plot()

    def plot_tracjectory(self, ax):
        # draw AUV's coordinate tracjectory
        ax.plot(self.x_data, self.y_data, self.z_data, label='GPS', color='green', marker='.',
            linestyle='dotted', linewidth=1, markersize=2)

    def plot_tracjectory_2D(self, ax):
        # draw AUV's coordinate tracjectory
        ax.plot(self.x_data, self.y_data, label='GPS Oxy', color='green', marker='.',
            linestyle='dotted', linewidth=1, markersize=2)
