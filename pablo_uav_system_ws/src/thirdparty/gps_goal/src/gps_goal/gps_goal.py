#!/usr/bin/python
import rospy
# import click
import math
import actionlib
import tf

from geographiclib.geodesic import Geodesic
from actionlib_msgs.msg import GoalStatus
from geometry_msgs.msg import PoseStamped
from move_base_msgs.msg import MoveBaseAction, MoveBaseGoal
from sensor_msgs.msg import NavSatFix

import geonav_transform.geonav_conversions as gc
import alvinxy.alvinxy as axy
from math import radians, cos, sin, asin, sqrt, pow, pi, atan2

earthRadius = 6371000.0 #Metres

def DMS_to_decimal_format(lat,long):
    # Check for degrees, minutes, seconds format and convert to decimal
    if ',' in lat:
        degrees, minutes, seconds = lat.split(',')
        degrees, minutes, seconds = float(degrees), float(minutes), float(seconds)
        if lat[0] == '-': # check for negative sign
            minutes = -minutes
            seconds = -seconds
        lat = degrees + minutes/60 + seconds/3600
    if ',' in long:
        degrees, minutes, seconds = long.split(',')
        degrees, minutes, seconds = float(degrees), float(minutes), float(seconds)
        if long[0] == '-': # check for negative sign
            minutes = -minutes
            seconds = -seconds
        long = degrees + minutes/60 + seconds/3600

    lat = float(lat)
    long = float(long)
    rospy.loginfo('Given GPS goal: lat %s, long %s.' % (lat, long))
    return lat, long

def get_origin_lat_long():
    # Get the lat long coordinates of our map frame's origin which must be publshed on topic /local_xy_origin. We use this to calculate our goal within the map frame.
    rospy.loginfo("Waiting for a message to initialize the origin GPS location...")
    origin_pose = rospy.wait_for_message('local_xy_origin', PoseStamped)
    origin_lat = origin_pose.pose.position.y
    origin_long = origin_pose.pose.position.x
    rospy.loginfo('Received origin: lat %s, long %s.' % (origin_lat, origin_long))
    return origin_lat, origin_long

def haversineDistance(latCur, lonCur, latWP, lonWP): #Returns distance to waypoint in Metres
	latWP, lonWP, latCur, lonCur = map(radians, [latWP, lonWP, latCur, lonCur]) #Convert into Radians to perform math
	a = pow(sin((latWP - latCur)/2),2) + cos(latCur) * cos(latWP) * pow(sin((lonWP - lonCur)/2),2)
	return earthRadius * 2.0 * asin(sqrt(a))  #Return calculated distance to waypoint in Metres

def bearing(latCur, lonCur, latWP, lonWP): #Bearing to waypoint (degrees)
	latWP, lonWP, latCur, lonCur = map(radians, [latWP, lonWP, latCur, lonCur]) #Convert into Radians to perform math
	dLon = lonWP - lonCur
	return atan2(sin(dLon) * cos(latWP), cos(latCur) * sin(latWP) - (sin(latCur) * cos(latWP) * cos(dLon)))

def testHaversineDistance():
    currPosX = 0;
    currPosY = 0;

    latCur = 10.762622
    lonCur = 106.660172
    latWP = 10.7626930177
    lonWP = 106.660182107

    distToWP = haversineDistance(latCur, lonCur, latWP, lonWP)
    bearingToWP = bearing(latCur, lonCur, latWP, lonWP)
    position_x = currPosX + (distToWP * cos(bearingToWP)) #Convert distance and angle to waypoint from Polar to Cartesian co-ordinates then add current position of robot odometry
    position_y = currPosY + (distToWP * sin(bearingToWP))
    print("Haversine Distance: x,y: ", position_x, position_y)

def get_xy_based_on_lat_long(lat,lon, name):
    # Define a local orgin, latitude and longitude in decimal degrees
    # GPS Origin
    olat = 10.762622
    olon = 106.660172

    xg2, yg2 = gc.ll2xy(lat,lon,olat,olon)
    utmy, utmx, utmzone = gc.LLtoUTM(lat,lon)
    xa,ya = axy.ll2xy(lat,lon,olat,olon)

    print("#########  "+name+"  ###########")
    print("LAT COORDINATES ==>"+str(lat)+","+str(lon))
    print("COORDINATES XYZ ==>"+str(xg2)+","+str(yg2))
    print("COORDINATES AXY==>"+str(xa)+","+str(ya))
    print("COORDINATES UTM==>"+str(utmx)+","+str(utmy))

    return xg2, yg2

def testAxy():

    latCur = 10.762622
    lonCur = 106.660172
    latWP = 10.7626930177
    lonWP = 106.660182107

    xg2, yg2 = get_xy_based_on_lat_long(latCur,lonCur, name="MAP")
    xg2, yg2 = get_xy_based_on_lat_long(latWP,lonWP, name="MAP")

def calc_goal(origin_lat, origin_long, goal_lat, goal_long):
    # Calculate distance and azimuth between GPS points
    geod = Geodesic.WGS84    # define the WGS84 ellipsoid
    g = geod.Inverse(origin_lat, origin_long, goal_lat, goal_long) # Compute several geodesic calculations between two GPS points
    hypotenuse = distance = g['s12'] # access distance
    rospy.loginfo("The distance from the origin to the goal is {:.3f} m.".format(distance))
    print("distance: ", distance)
    azimuth = g['azi1']
    rospy.loginfo("The azimuth from the origin to the goal is {:.3f} degrees.".format(azimuth))

    # Convert polar (distance and azimuth) to x,y translation in meters (needed for ROS) by finding side lenghs of a right-angle triangle
    # Convert azimuth to radians
    azimuth = math.radians(azimuth)
    x = adjacent = math.cos(azimuth) * hypotenuse
    y = opposite = math.sin(azimuth) * hypotenuse
    rospy.loginfo("The translation from the origin to the goal is (x,y) {:.3f}, {:.3f} m.".format(x, y))
    print("x,y: ", x, y)
    y_ratio = 5/y
    print("y ratio: ", y_ratio)
    print("Spawn x,y: ", x, y*round(y_ratio, 5))
    # utmy,utmx,utmzone=gc.LLtoUTM(origin_lat, origin_long)

    xg2,yg2=gc.ll2xy(goal_lat, goal_long, origin_lat, origin_long)
    print("x,y: ", yg2, xg2)
    print("y ratio: ", 5/xg2)
    return x, y

class GpsGoal():
    def __init__(self):
        rospy.init_node('gps_goal')

        rospy.loginfo("Connecting to move_base...")
        self.move_base = actionlib.SimpleActionClient('move_base', MoveBaseAction)
        self.move_base.wait_for_server()
        rospy.loginfo("Connected.")

        rospy.Subscriber('gps_goal_pose', PoseStamped, self.gps_goal_pose_callback)
        rospy.Subscriber('gps_goal_fix', NavSatFix, self.gps_goal_fix_callback)

        # Get the lat long coordinates of our map frame's origin which must be publshed on topic /local_xy_origin. We use this to calculate our goal within the map frame.
        self.origin_lat, self.origin_long = get_origin_lat_long()

    def do_gps_goal(self, goal_lat, goal_long, z=0, yaw=0, roll=0, pitch=0):
        # Calculate goal x and y in the frame_id given the frame's origin GPS and a goal GPS location
        x, y = calc_goal(self.origin_lat, self.origin_long, goal_lat, goal_long)
        # Create move_base goal
        self.publish_goal(x=x, y=y, z=z, yaw=yaw, roll=roll, pitch=pitch)

    def gps_goal_pose_callback(self, data):
        lat = data.pose.position.y
        long = data.pose.position.x
        z = data.pose.position.z
        euler = tf.transformations.euler_from_quaternion(data.pose.orientation)
        roll = euler[0]
        pitch = euler[1]
        yaw = euler[2]
        self.do_gps_goal(lat, long, z=z, yaw=yaw, roll=roll, pitch=pitch)

    def gps_goal_fix_callback(self, data):
        self.do_gps_goal(data.latitude, data.longitude)

    def publish_goal(self, x=0, y=0, z=0, yaw=0, roll=0, pitch=0):
        # Create move_base goal
        goal = MoveBaseGoal()
        goal.target_pose.header.frame_id = rospy.get_param('~frame_id','map')
        goal.target_pose.pose.position.x = x
        goal.target_pose.pose.position.y = y
        goal.target_pose.pose.position.z =    z
        quaternion = tf.transformations.quaternion_from_euler(roll, pitch, yaw)
        goal.target_pose.pose.orientation.x = quaternion[0]
        goal.target_pose.pose.orientation.y = quaternion[1]
        goal.target_pose.pose.orientation.z = quaternion[2]
        goal.target_pose.pose.orientation.w = quaternion[3]
        rospy.loginfo('Executing move_base goal to position (x,y) %s, %s, with %s degrees yaw.' % (x, y, yaw))
        rospy.loginfo("To cancel the goal: 'rostopic pub -1 /move_base/cancel actionlib_msgs/GoalID -- {}'")

        # Send goal
        self.move_base.send_goal(goal)
        rospy.loginfo('Inital goal status: %s' % GoalStatus.to_string(self.move_base.get_state()))
        status = self.move_base.get_goal_status_text()
        if status:
            rospy.loginfo(status)

        # Wait for goal result
        self.move_base.wait_for_result()
        rospy.loginfo('Final goal status: %s' % GoalStatus.to_string(self.move_base.get_state()))
        status = self.move_base.get_goal_status_text()
        if status:
            rospy.loginfo(status)

# @click.command()
# @click.option('--lat', prompt='Latitude', help='Latitude')
# @click.option('--long', prompt='Longitude', help='Longitude')
# @click.option('--roll', '-r', help='Set target roll for goal', default=0.0)
# @click.option('--pitch', '-p', help='Set target pitch for goal', default=0.0)
# @click.option('--yaw', '-y', help='Set target yaw for goal', default=0.0)
def cli_main(lat, long, roll, pitch, yaw):
    """Send goal to move_base given latitude and longitude

    \b
    Two usage formats:
    gps_goal.py --lat 43.658 --long -79.379 # decimal format
    gps_goal.py --lat 43,39,31 --long -79,22,45 # DMS format
    """
    gpsGoal = GpsGoal();

    # Check for degrees, minutes, seconds format and convert to decimal
    lat, long = DMS_to_decimal_format(lat, long)
    gpsGoal.do_gps_goal(lat, long, roll=roll, pitch=pitch, yaw=yaw)


def ros_main():
    gpsGoal = GpsGoal();
    rospy.spin()

if __name__ == '__main__':
    # origin_lat = 10.762622
    # origin_long = 106.660172
    # goal_lat = 10.7626930177
    # goal_long = 106.660182107
    origin_lat = 10.76262
    origin_long = 106.66017
    goal_lat = 10.76269
    goal_long = 106.66018
    calc_goal(origin_lat, origin_long, goal_lat, goal_long)
    # testHaversineDistance()
    # testAxy()
    print("-------------------------------------------")
    # map_origin_lat = 10.82017
    # map_origin_lon = 106.67990
    # map_goal_lat = 10.82020
    # map_goal_lon = 106.67993
    # map_distance = 5.1
    map_origin_lat = 10.82013
    map_origin_lon = 106.67989
    map_goal_lat = 10.82007
    map_goal_lon = 106.67981
    map_distance = 10.6
    print("Map origin lat/lon: ", map_origin_lat, map_origin_lon)
    print("Map goal lat/lon: ", map_goal_lat, map_goal_lon)
    print("Distance on Google Map: ", map_distance)
    calc_goal(map_origin_lat, map_origin_lon, map_goal_lat, map_goal_lon)
