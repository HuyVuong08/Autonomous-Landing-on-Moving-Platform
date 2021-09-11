;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::FlightAnomaly)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'FlightAnomaly (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::FLIGHTANOMALY")
  (make-package "DJI_OSDK_ROS::FLIGHTANOMALY"))

(in-package "ROS")
;;//! \htmlinclude FlightAnomaly.msg.html


(intern "*IMPACT_IN_AIR*" (find-package "DJI_OSDK_ROS::FLIGHTANOMALY"))
(shadow '*IMPACT_IN_AIR* (find-package "DJI_OSDK_ROS::FLIGHTANOMALY"))
(defconstant dji_osdk_ros::FlightAnomaly::*IMPACT_IN_AIR* 1)
(intern "*RANDOM_FLY*" (find-package "DJI_OSDK_ROS::FLIGHTANOMALY"))
(shadow '*RANDOM_FLY* (find-package "DJI_OSDK_ROS::FLIGHTANOMALY"))
(defconstant dji_osdk_ros::FlightAnomaly::*RANDOM_FLY* 2)
(intern "*VERTICAL_CONTROL_FAIL*" (find-package "DJI_OSDK_ROS::FLIGHTANOMALY"))
(shadow '*VERTICAL_CONTROL_FAIL* (find-package "DJI_OSDK_ROS::FLIGHTANOMALY"))
(defconstant dji_osdk_ros::FlightAnomaly::*VERTICAL_CONTROL_FAIL* 4)
(intern "*HORIZONTAL_CONTROL_FAIL*" (find-package "DJI_OSDK_ROS::FLIGHTANOMALY"))
(shadow '*HORIZONTAL_CONTROL_FAIL* (find-package "DJI_OSDK_ROS::FLIGHTANOMALY"))
(defconstant dji_osdk_ros::FlightAnomaly::*HORIZONTAL_CONTROL_FAIL* 8)
(intern "*YAW_CONTROL_FAIL*" (find-package "DJI_OSDK_ROS::FLIGHTANOMALY"))
(shadow '*YAW_CONTROL_FAIL* (find-package "DJI_OSDK_ROS::FLIGHTANOMALY"))
(defconstant dji_osdk_ros::FlightAnomaly::*YAW_CONTROL_FAIL* 16)
(intern "*AIRCRAFT_IS_FALLING*" (find-package "DJI_OSDK_ROS::FLIGHTANOMALY"))
(shadow '*AIRCRAFT_IS_FALLING* (find-package "DJI_OSDK_ROS::FLIGHTANOMALY"))
(defconstant dji_osdk_ros::FlightAnomaly::*AIRCRAFT_IS_FALLING* 32)
(intern "*STRONG_WIND_LEVEL1*" (find-package "DJI_OSDK_ROS::FLIGHTANOMALY"))
(shadow '*STRONG_WIND_LEVEL1* (find-package "DJI_OSDK_ROS::FLIGHTANOMALY"))
(defconstant dji_osdk_ros::FlightAnomaly::*STRONG_WIND_LEVEL1* 64)
(intern "*STRONG_WIND_LEVEL2*" (find-package "DJI_OSDK_ROS::FLIGHTANOMALY"))
(shadow '*STRONG_WIND_LEVEL2* (find-package "DJI_OSDK_ROS::FLIGHTANOMALY"))
(defconstant dji_osdk_ros::FlightAnomaly::*STRONG_WIND_LEVEL2* 128)
(intern "*COMPASS_INSTALLATION_ERROR*" (find-package "DJI_OSDK_ROS::FLIGHTANOMALY"))
(shadow '*COMPASS_INSTALLATION_ERROR* (find-package "DJI_OSDK_ROS::FLIGHTANOMALY"))
(defconstant dji_osdk_ros::FlightAnomaly::*COMPASS_INSTALLATION_ERROR* 256)
(intern "*IMU_INSTALLATION_ERROR*" (find-package "DJI_OSDK_ROS::FLIGHTANOMALY"))
(shadow '*IMU_INSTALLATION_ERROR* (find-package "DJI_OSDK_ROS::FLIGHTANOMALY"))
(defconstant dji_osdk_ros::FlightAnomaly::*IMU_INSTALLATION_ERROR* 512)
(intern "*ESC_TEMPERATURE_HIGH*" (find-package "DJI_OSDK_ROS::FLIGHTANOMALY"))
(shadow '*ESC_TEMPERATURE_HIGH* (find-package "DJI_OSDK_ROS::FLIGHTANOMALY"))
(defconstant dji_osdk_ros::FlightAnomaly::*ESC_TEMPERATURE_HIGH* 1024)
(intern "*ESC_DISCONNECTED*" (find-package "DJI_OSDK_ROS::FLIGHTANOMALY"))
(shadow '*ESC_DISCONNECTED* (find-package "DJI_OSDK_ROS::FLIGHTANOMALY"))
(defconstant dji_osdk_ros::FlightAnomaly::*ESC_DISCONNECTED* 2048)
(intern "*GPS_YAW_ERROR*" (find-package "DJI_OSDK_ROS::FLIGHTANOMALY"))
(shadow '*GPS_YAW_ERROR* (find-package "DJI_OSDK_ROS::FLIGHTANOMALY"))
(defconstant dji_osdk_ros::FlightAnomaly::*GPS_YAW_ERROR* 4096)

(defun dji_osdk_ros::FlightAnomaly-to-symbol (const)
  (cond
        ((= const 1) 'dji_osdk_ros::FlightAnomaly::*IMPACT_IN_AIR*)
        ((= const 2) 'dji_osdk_ros::FlightAnomaly::*RANDOM_FLY*)
        ((= const 4) 'dji_osdk_ros::FlightAnomaly::*VERTICAL_CONTROL_FAIL*)
        ((= const 8) 'dji_osdk_ros::FlightAnomaly::*HORIZONTAL_CONTROL_FAIL*)
        ((= const 16) 'dji_osdk_ros::FlightAnomaly::*YAW_CONTROL_FAIL*)
        ((= const 32) 'dji_osdk_ros::FlightAnomaly::*AIRCRAFT_IS_FALLING*)
        ((= const 64) 'dji_osdk_ros::FlightAnomaly::*STRONG_WIND_LEVEL1*)
        ((= const 128) 'dji_osdk_ros::FlightAnomaly::*STRONG_WIND_LEVEL2*)
        ((= const 256) 'dji_osdk_ros::FlightAnomaly::*COMPASS_INSTALLATION_ERROR*)
        ((= const 512) 'dji_osdk_ros::FlightAnomaly::*IMU_INSTALLATION_ERROR*)
        ((= const 1024) 'dji_osdk_ros::FlightAnomaly::*ESC_TEMPERATURE_HIGH*)
        ((= const 2048) 'dji_osdk_ros::FlightAnomaly::*ESC_DISCONNECTED*)
        ((= const 4096) 'dji_osdk_ros::FlightAnomaly::*GPS_YAW_ERROR*)
        (t nil)))

(defclass dji_osdk_ros::FlightAnomaly
  :super ros::object
  :slots (_data ))

(defmethod dji_osdk_ros::FlightAnomaly
  (:init
   (&key
    ((:data __data) 0)
    )
   (send-super :init)
   (setq _data (round __data))
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; uint32 _data
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _data
       (write-long _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _data
     (setq _data (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get dji_osdk_ros::FlightAnomaly :md5sum-) "098979ec2b2d91dd43226500118b8680")
(setf (get dji_osdk_ros::FlightAnomaly :datatype-) "dji_osdk_ros/FlightAnomaly")
(setf (get dji_osdk_ros::FlightAnomaly :definition-)
      "# Here is an example how to use FlightAnomaly msg:
#
# void flightAnomalyCallback(const dji_osdk_ros::FlightAnomaly::ConstPtr & msg)
# {
#   uint32_t flightAnomalyData = msg->data;
#   if(flightAnomalyData)
#   {
#     ROS_INFO(\"Flight Anomaly Reported by Flight Controller. Here are details:\");
#     if(flightAnomalyData && dji_osdk_ros::FlightAnomaly::COMPASS_INSTALLATION_ERROR)
#     {
#         ROS_INFO(\"COMPASS_INSTALLATION_ERROR\");
#     }
#
#     if(flightAnomalyData && dji_osdk_ros::FlightAnomaly::IMU_INSTALLATION_ERROR)
#     {
#         ROS_INFO(\"IMU_INSTALLATION_ERROR\");
#     }
#
#     // etc...
#   }
# }
#
#

# constants for anomaly details
uint32 IMPACT_IN_AIR              = 1     #
uint32 RANDOM_FLY                 = 2     #
uint32 VERTICAL_CONTROL_FAIL      = 4     #
uint32 HORIZONTAL_CONTROL_FAIL    = 8     #
uint32 YAW_CONTROL_FAIL           = 16    #
uint32 AIRCRAFT_IS_FALLING        = 32    #
uint32 STRONG_WIND_LEVEL1         = 64    #
uint32 STRONG_WIND_LEVEL2         = 128   #
uint32 COMPASS_INSTALLATION_ERROR = 256   #
uint32 IMU_INSTALLATION_ERROR     = 512   #
uint32 ESC_TEMPERATURE_HIGH       = 1024  #
uint32 ESC_DISCONNECTED           = 2048  #
uint32 GPS_YAW_ERROR              = 4096  #

#
uint32 data


")



(provide :dji_osdk_ros/FlightAnomaly "098979ec2b2d91dd43226500118b8680")


