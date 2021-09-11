;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::GetHMSData)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'GetHMSData (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::GETHMSDATA")
  (make-package "DJI_OSDK_ROS::GETHMSDATA"))
(unless (find-package "DJI_OSDK_ROS::GETHMSDATAREQUEST")
  (make-package "DJI_OSDK_ROS::GETHMSDATAREQUEST"))
(unless (find-package "DJI_OSDK_ROS::GETHMSDATARESPONSE")
  (make-package "DJI_OSDK_ROS::GETHMSDATARESPONSE"))

(in-package "ROS")





(defclass dji_osdk_ros::GetHMSDataRequest
  :super ros::object
  :slots (_enable ))

(defmethod dji_osdk_ros::GetHMSDataRequest
  (:init
   (&key
    ((:enable __enable) nil)
    )
   (send-super :init)
   (setq _enable __enable)
   self)
  (:enable
   (&optional (__enable :null))
   (if (not (eq __enable :null)) (setq _enable __enable)) _enable)
  (:serialization-length
   ()
   (+
    ;; bool _enable
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _enable
       (if _enable (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _enable
     (setq _enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass dji_osdk_ros::GetHMSDataResponse
  :super ros::object
  :slots (_result _deviceIndex _errList _timeStamp ))

(defmethod dji_osdk_ros::GetHMSDataResponse
  (:init
   (&key
    ((:result __result) nil)
    ((:deviceIndex __deviceIndex) 0)
    ((:errList __errList) ())
    ((:timeStamp __timeStamp) 0)
    )
   (send-super :init)
   (setq _result __result)
   (setq _deviceIndex (round __deviceIndex))
   (setq _errList __errList)
   (setq _timeStamp (round __timeStamp))
   self)
  (:result
   (&optional (__result :null))
   (if (not (eq __result :null)) (setq _result __result)) _result)
  (:deviceIndex
   (&optional __deviceIndex)
   (if __deviceIndex (setq _deviceIndex __deviceIndex)) _deviceIndex)
  (:errList
   (&rest __errList)
   (if (keywordp (car __errList))
       (send* _errList __errList)
     (progn
       (if __errList (setq _errList (car __errList)))
       _errList)))
  (:timeStamp
   (&optional __timeStamp)
   (if __timeStamp (setq _timeStamp __timeStamp)) _timeStamp)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ;; uint8 _deviceIndex
    1
    ;; dji_osdk_ros/HMSPushInfo[] _errList
    (apply #'+ (send-all _errList :serialization-length)) 4
    ;; uint32 _timeStamp
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _deviceIndex
       (write-byte _deviceIndex s)
     ;; dji_osdk_ros/HMSPushInfo[] _errList
     (write-long (length _errList) s)
     (dolist (elem _errList)
       (send elem :serialize s)
       )
     ;; uint32 _timeStamp
       (write-long _timeStamp s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _deviceIndex
     (setq _deviceIndex (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; dji_osdk_ros/HMSPushInfo[] _errList
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _errList (let (r) (dotimes (i n) (push (instance dji_osdk_ros::HMSPushInfo :init) r)) r))
     (dolist (elem- _errList)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; uint32 _timeStamp
     (setq _timeStamp (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dji_osdk_ros::GetHMSData
  :super ros::object
  :slots ())

(setf (get dji_osdk_ros::GetHMSData :md5sum-) "1ec4559c4a22067560534b61ee437470")
(setf (get dji_osdk_ros::GetHMSData :datatype-) "dji_osdk_ros/GetHMSData")
(setf (get dji_osdk_ros::GetHMSData :request) dji_osdk_ros::GetHMSDataRequest)
(setf (get dji_osdk_ros::GetHMSData :response) dji_osdk_ros::GetHMSDataResponse)

(defmethod dji_osdk_ros::GetHMSDataRequest
  (:response () (instance dji_osdk_ros::GetHMSDataResponse :init)))

(setf (get dji_osdk_ros::GetHMSDataRequest :md5sum-) "1ec4559c4a22067560534b61ee437470")
(setf (get dji_osdk_ros::GetHMSDataRequest :datatype-) "dji_osdk_ros/GetHMSDataRequest")
(setf (get dji_osdk_ros::GetHMSDataRequest :definition-)
      "#request
bool enable
---
#reponse
bool result
uint8 deviceIndex         # When the error code is related to camera or gimbal device,
                          # it will tell you which device it is.
HMSPushInfo[] errList     # error code list in each pushing
uint32 timeStamp

================================================================================
MSG: dji_osdk_ros/HMSPushInfo
uint32 alarmID     #/*! error code*/
uint8  sensorIndex #/*! fault sensor's index*/
")

(setf (get dji_osdk_ros::GetHMSDataResponse :md5sum-) "1ec4559c4a22067560534b61ee437470")
(setf (get dji_osdk_ros::GetHMSDataResponse :datatype-) "dji_osdk_ros/GetHMSDataResponse")
(setf (get dji_osdk_ros::GetHMSDataResponse :definition-)
      "#request
bool enable
---
#reponse
bool result
uint8 deviceIndex         # When the error code is related to camera or gimbal device,
                          # it will tell you which device it is.
HMSPushInfo[] errList     # error code list in each pushing
uint32 timeStamp

================================================================================
MSG: dji_osdk_ros/HMSPushInfo
uint32 alarmID     #/*! error code*/
uint8  sensorIndex #/*! fault sensor's index*/
")



(provide :dji_osdk_ros/GetHMSData "1ec4559c4a22067560534b61ee437470")


