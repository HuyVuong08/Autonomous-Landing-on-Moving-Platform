#!/usr/bin/env python 

# Import geonav tranformation module
import geonav_transform.geonav_conversions as gc
reload(gc)
# Import AlvinXY transformation module
import alvinxy.alvinxy as axy
reload(axy)
import rospy
import tf
from sensor_msgs.msg import NavSatFix


class TfListener(object):
    def __init__(self, start_frame, end_frame):
        

        self.listener = tf.TransformListener()

        self.start_frame = "/"+start_frame
        self.end_frame = "/"+end_frame
        
        self.listener.waitForTransform(self.start_frame, self.end_frame, rospy.Time(), rospy.Duration(4.0))

    def get_transform(self):
        trans = None
        rot = None
        try:
            (trans,rot) = self.listener.lookupTransform("utm", "odom", rospy.Time(0))
        except (tf.LookupException, tf.ConnectivityException, tf.ExtrapolationException):
            pass
        
        return trans, rot

"""
user:~/catkin_ws/src$ rostopic echo /tf_static                                                                                                                            
transforms:                                                                                                                                                               
  -                                                                                                                                                                       
    header:                                                                                                                                                               
      seq: 0                                                                                                                                                              
      stamp:                                                                                                                                                              
        secs: 1                                                                                                                                                           
        nsecs: 523000000                                                                                                                                                  
      frame_id: odom                                                                                                                                                      
    child_frame_id: utm                                                                                                                                                   
    transform:                                                                                                                                                            
      translation:                                                                                                                                                        
        x: -718233.596277                                                                                                                                                 
        y: -4376228.42616                                                                                                                                                 
        z: 0.0                                                                                                                                                            
      rotation:                                                                                                                                                           
        x: 3.48735665421e-05                                                                                                                                              
        y: -0.0002817917922                                                                                                                                               
        z: -3.04934731009e-06                                                                                                                                             
        w: 0.999999959684
"""


def get_xy_based_on_lat_long(lat,lon, name):
    # Define a local orgin, latitude and longitude in decimal degrees
    # Robotnik position at Fuente del Jarro
    olat = 0.0
    olon = 0.0
    
    xg2, yg2 = gc.ll2xy(lat,lon,olat,olon)
    utmy, utmx, utmzone = gc.LLtoUTM(lat,lon)
    xa,ya = axy.ll2xy(lat,lon,olat,olon)

    rospy.loginfo("#########  "+name+"  ###########")  
    rospy.loginfo("LAT COORDINATES ==>"+str(lat)+","+str(lon))  
    rospy.loginfo("COORDINATES ==>"+str(xg2)+","+str(yg2))
    rospy.loginfo("COORDINATES ==>"+str(xa)+","+str(ya))
    rospy.loginfo("COORDINATES ==>"+str(utmx)+","+str(utmy))

    return utmx, utmy


def callback(msg):
    """
    user:~/catkin_ws$ rosmsg show  sensor_msgs/NavSatFix                                                                                                                      
    uint8 COVARIANCE_TYPE_UNKNOWN=0                                                                                                                                           
    uint8 COVARIANCE_TYPE_APPROXIMATED=1                                                                                                                                      
    uint8 COVARIANCE_TYPE_DIAGONAL_KNOWN=2                                                                                                                                    
    uint8 COVARIANCE_TYPE_KNOWN=3                                                                                                                                             
    std_msgs/Header header                                                                                                                                                    
    uint32 seq                                                                                                                                                              
    time stamp                                                                                                                                                              
    string frame_id                                                                                                                                                         
    sensor_msgs/NavSatStatus status                                                                                                                                           
    int8 STATUS_NO_FIX=-1                                                                                                                                                   
    int8 STATUS_FIX=0                                                                                                                                                       
    int8 STATUS_SBAS_FIX=1                                                                                                                                                  
    int8 STATUS_GBAS_FIX=2                                                                                                                                                  
    uint16 SERVICE_GPS=1                                                                                                                                                    
    uint16 SERVICE_GLONASS=2                                                                                                                                                
    uint16 SERVICE_COMPASS=4                                                                                                                                                
    uint16 SERVICE_GALILEO=8                                                                                                                                                
    int8 status                                                                                                                                                             
    uint16 service                                                                                                                                                          
    float64 latitude                                                                                                                                                          
    float64 longitude                                                                                                                                                         
    float64 altitude                                                                                                                                                          
    float64[9] position_covariance                                                                                                                                            
    uint8 position_covariance_type
    """
    lat = msg.latitude
    lon = msg.longitude
    name = "Robot GPS"
    rospy.loginfo("Robot lat="+str(lat)+", lon="+str(lon))
    get_xy_based_on_lat_long(39.5080331,-0.4619816,name)


if __name__ == '__main__':
    rospy.init_node('utm_to_map_node')
    br = tf.TransformBroadcaster()
    rate = rospy.Rate(3.0)
    utmx, utmy = get_xy_based_on_lat_long(lat=39.5080331,lon=-0.4619816, name="MAP")
    
    """
    start_frame = "utm"
    end_frame = "odom"
    tf_litsener_utm_odom = TfListener(start_frame, end_frame)
    transl, rot = tf_litsener_utm_odom.get_transform()
    while not transl:
        
        if not transl:
            rospy.logwarn("TRANSFORM NOT FOUND TRYING AGAIN")
        
        rate.sleep()
        transl, rot = tf_litsener_utm_odom.get_transform()
        
    zaxis = transl[2]
    rospy.logwarn("ZAXIS of Tranform UTM to ODOM==>"+str(zaxis))
    """
    #xg2 = -718233.596277 
    #yg2 = -4376228.42616
    # This UtmZ is the deffault of the system
    utmz = -709.189
    #utmz = 0
    
    rospy.Subscriber("/gps/fix", NavSatFix, callback)
    
    while not rospy.is_shutdown():
        
        br.sendTransform((utmx, utmy, utmz),
                         (0.0, 0.0, 0.0, 1.0),
                         rospy.Time.now(),
                         "map",
                         "utm")
        """
        br.sendTransform((-1, 0, 0.0),
                 (0.0, 0.0, 0.0, 1.0),
                 rospy.Time.now(),
                 "map",
                 "odom")
        """
        rate.sleep()