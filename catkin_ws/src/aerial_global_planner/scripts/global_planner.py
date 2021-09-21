#!/usr/bin/env python
import tf
import math
import rospy
from nav_msgs.msg import Path
from tf import TransformListener
from tf2_msgs.msg import TFMessage
from geometry_msgs.msg import PoseStamped
from tf_velocity_estimator.msg import Velocity
from tf_velocity_estimator.msg import PosesAndVelocities

tf_ = None
path_pub = None
max_velocity = 1 # m/s
robot_pose = None
tf_broadcaster = None

def init():
    global path_pub, tf_, max_velocity, tf_broadcaster
    rospy.init_node('aerial_global_planner')
    max_velocity = rospy.get_param('~max_velocity', 5)
    rospy.Subscriber('tf_velocity_estimator/poses_velocities', PosesAndVelocities, p_v_callback)
    tf_ = TransformListener()
    tf_broadcaster = tf.TransformBroadcaster()
    rospy.Subscriber('tf', TFMessage, tf_callback)
    path_pub = rospy.Publisher('aerial_global_planner/plan', Path, queue_size=1)
    while not rospy.is_shutdown():
        rospy.spin()

def tf_callback(tf2):
    global robot_pose, tf_
    try:
        t = tf_.getLatestCommonTime('/odom', '/base_link')
        position, quaternion = tf_.lookupTransform('/odom', '/base_link', t)
        ps = PoseStamped()
        ps.header.stamp = rospy.Time.now()
        ps.header.frame_id = '/odom'
        ps.pose.position.x = position[0]
        ps.pose.position.y = position[1]
        ps.pose.position.z = position[2]
        ps.pose.orientation.x = quaternion[0]
        ps.pose.orientation.y = quaternion[1]
        ps.pose.orientation.z = quaternion[2]
        ps.pose.orientation.w = quaternion[3]
        robot_pose = ps
        # TODO subscribe to odom instead of tf! wtf!!
    except Exception as e:
        pass

def p_v_callback(pvmsg):
    global path_pub, robot_pose, max_velocity, tf_broadcaster
    if robot_pose != None:
        path_msg = Path()
        path_msg.header.frame_id = '/odom'
        path_msg.header.stamp = rospy.Time.now()

        latest_pose = pvmsg.latest_poses[-1]
        lastx = latest_pose.pose.position.x
        lasty = latest_pose.pose.position.y
        lastz = latest_pose.pose.position.z
        vx = []
        vy = []
        for v in pvmsg.latest_velocities:
            vx.append(v.vx)
            vy.append(v.vy)

        meanvx = sum(vx) / float(len(vx))
        meanvy = sum(vy) / float(len(vy))
        lastvx = 0
        lastvy = 0
        noise = False
        stabilized = False
        while not stabilized:
            stabilized = True
            if len(vx) >= 3:
                if abs(vx[0] - meanvx) >= 0.02:
                    stabilized = False
                    noise = True
                    del vx[0]
                    meanvx = sum(vx) / float(len(vx))
                if abs(vx[-1] - meanvx) >= 0.02:
                    stabilized = False
                    noise = True
                    del vx[-1]
                    meanvx = sum(vx) / float(len(vx))
            if len(vy) >= 3:
                if abs(vy[0] - meanvy) >= 0.02:
                    stabilized = False
                    noise = True
                    del vy[0]
                    meanvy = sum(vy) / float(len(vy))
                if abs(vy[-1] - meanvy) >= 0.02:
                    stabilized = False
                    noise = True
                    del vy[-1]
                    meanvy = sum(vy) / float(len(vy))
        #if noise:
        #    lastvx = sum(vx)/float(len(vx))
        #    lastvy = sum(vy)/float(len(vy))
        #else:
        lastvx = meanvx
        lastvy = meanvy

        t_ = (rospy.Time.now().to_sec() - latest_pose.header.stamp.to_sec())

        goalx , goaly, goalz, yaw = rendezvous(t_, lastx, lasty, lastz, lastvx, lastvy, robot_pose.pose.position.x, robot_pose.pose.position.y, robot_pose.pose.position.z, max_velocity)

        if goalx != None:
            latest_pose.pose.position.x = goalx
            latest_pose.pose.position.y = goaly
            latest_pose.pose.position.z = goalz
            path_msg.poses.append(latest_pose)
            path_msg.poses.append(robot_pose)
            path_pub.publish(path_msg)

            goal_quat = tf.transformations.quaternion_from_euler(0, 0, yaw)
            tf_broadcaster.sendTransform(
                (goalx, goaly, goalz),
                goal_quat,
                rospy.Time.now(),
                'robot_goal',
                'odom')
        else: # The robot cannot reach the goal
            path_pub.publish(path_msg)


# UNTESTED FUNCTION
def rendezvous(t_, helix, heliy, heliz, helivx, helivy, robotx, roboty, robotz, maxrobotv):
    global tf_broadcaster
    goalx = None
    goaly = None
    goalz = None
    needed_velocities = []

    for t in float_range(t_, 20, 0.1):
        # Helipad position after time = t
        hx = helix + (helivx * t)
        hy = heliy + (helivy * t)
        if t == t_:
            tf_broadcaster.sendTransform(
                (hx, hy, heliz),
                (0, 0, 0, 1),
                rospy.Time.now(),
                'goal_prediction',
                'odom')
        # Robot needed velocity to reach helipad's position
        neededvx = (robotx - hx) / t
        neededvy = (roboty - hy) / t
        neededvz = (robotz - heliz) / t
        if abs(neededvx) < maxrobotv and abs(neededvy) < maxrobotv and abs(neededvz) < maxrobotv:
            needed_velocities.append([[neededvx, neededvy, neededvz], [hx, hy, heliz]])
    minv = max_velocity + 1
    minvxvy = max_velocity + 1
    for i in needed_velocities:
        sumv = abs(i[0][0]) + abs(i[0][1]) + abs(i[0][2])
        if sumv < minv:
            goalx = i[1][0]
            goaly = i[1][1]
            goalz = i[1][2]
            minv = sumv
            minvxvy = abs(i[0][0]) + abs(i[0][1])
        elif sumv == minv and sumvxvy < minvxvy:
            goalx = i[1][0]
            goaly = i[1][1]
            goalz = i[1][2]
            minv = sumv
            minvxvy = abs(i[0][0]) + abs(i[0][1])

    yaw = 0.0
    if goalx!= None:
        yaw = lookAt(goalx, goaly, helix, heliy)
    return goalx, goaly, goalz, yaw

def lookAt(goalx, goaly, helix, heliy):
    dx = helix - goalx
    dy = heliy - goaly
    return math.atan2(dy,dx)

def float_range(x, y, jump):
    while x < y:
        yield x
        x += jump

if __name__ == '__main__':
    init()