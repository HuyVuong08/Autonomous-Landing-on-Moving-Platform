"""
Class for plotting a platform
Binh-Tran added some feature for drawing his team problem.
"""
import numpy as np 
from mpl_toolkits.mplot3d.art3d import Poly3DCollection, Line3DCollection

class Platform():
    def __init__(self, width = 0.2, height =0.1, length = 0.2):
        self.w = width
        self.h = height
        self.l = length
        
        self.p1 = np.array([0,0,0])
        self.p2 = np.array([0,0,0])
        self.p3 = np.array([0,0,0])
        self.p4 = np.array([0,0,0])
        
        self.p5 = np.array([0,0,0])
        self.p6 = np.array([0,0,0])
        self.p7 = np.array([0,0,0])
        self.p8 = np.array([0,0,0])

        
        # tracjectory data for platform
        self.x_data = []
        self.y_data = []
        self.z_data = []
        
    def find_vertices(self):
        z_bottom = self.z - self.h/2
        z_top = self.z + self.h/2
        x_tail = self.x - self.l/2
        x_head = self.x + self.l/2
        y_front = self.y - self.w/2
        y_back = self.y + self.w/2
        self.p1 = [x_tail, y_back, z_top]
        self.p2 = [x_tail, y_front, z_top]
        self.p3 = [x_head, y_front, z_top]
        self.p4 = [x_head, y_back, z_top]
        
        self.p5 = [x_tail, y_back, z_bottom]
        self.p6 = [x_tail, y_front, z_bottom]
        self.p7 = [x_head, y_front, z_bottom]
        self.p8 = [x_head, y_back, z_bottom]
        
    def update_pose(self, x, y, z, direction, ax):
        self.x = x
        self.y = y
        self.z = z
        self.d = direction
        self.find_vertices()
        
        self.x_data.append(x)
        self.y_data.append(y)
        self.z_data.append(z)
        self.plot(ax)


    def plot(self, ax):  # pragma: no cover
        Z = np.array([  self.p1,
                        self.p2,
                        self.p3,
                        self.p4,
                        self.p5,
                        self.p6,
                        self.p7,
                        self.p8])

        #ax.scatter3D(Z[:, 0], Z[:, 1], Z[:, 2])
        verts = [[Z[0],Z[1],Z[2],Z[3]],
                 [Z[4],Z[5],Z[6],Z[7]],
                 [Z[0],Z[1],Z[5],Z[4]],
                 [Z[2],Z[3],Z[7],Z[6]],
                 [Z[1],Z[2],Z[6],Z[5]],
                 [Z[4],Z[7],Z[3],Z[0]]]
        ax.add_collection3d(Poly3DCollection(verts, facecolors='cyan', linewidths=1, edgecolors='k', alpha=.20))


    def plot_tracjectory(self, ax):
        # draw platforms' coordinate tracjectory
        ax.plot(self.x_data, self.y_data, self.z_data, label='Platform', color='blue', marker='D', 
            linestyle='dashed', linewidth=1, markersize=2)