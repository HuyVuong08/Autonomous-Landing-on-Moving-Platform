;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::GimbalAction)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'GimbalAction (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::GIMBALACTION")
  (make-package "DJI_OSDK_ROS::GIMBALACTION"))
(unless (find-package "DJI_OSDK_ROS::GIMBALACTIONREQUEST")
  (make-package "DJI_OSDK_ROS::GIMBALACTIONREQUEST"))
(unless (find-package "DJI_OSDK_ROS::GIMBALACTIONRESPONSE")
  (make-package "DJI_OSDK_ROS::GIMBALACTIONRESPONSE"))

(in-package "ROS")

(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))




(defclass dji_osdk_ros::GimbalActionRequest
  :super ros::object
  :slots (_header _is_reset _payload_index _rotationMode _pitch _roll _yaw _time ))

(defmethod dji_osdk_ros::GimbalActionRequest
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:is_reset __is_reset) nil)
    ((:payload_index __payload_index) 0)
    ((:rotationMode __rotationMode) 0)
    ((:pitch __pitch) 0.0)
    ((:roll __roll) 0.0)
    ((:yaw __yaw) 0.0)
    ((:time __time) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _is_reset __is_reset)
   (setq _payload_index (round __payload_index))
   (setq _rotationMode (round __rotationMode))
   (setq _pitch (float __pitch))
   (setq _roll (float __roll))
   (setq _yaw (float __yaw))
   (setq _time (float __time))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:is_reset
   (&optional (__is_reset :null))
   (if (not (eq __is_reset :null)) (setq _is_reset __is_reset)) _is_reset)
  (:payload_index
   (&optional __payload_index)
   (if __payload_index (setq _payload_index __payload_index)) _payload_index)
  (:rotationMode
   (&optional __rotationMode)
   (if __rotationMode (setq _rotationMode __rotationMode)) _rotationMode)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:roll
   (&optional __roll)
   (if __roll (setq _roll __roll)) _roll)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _is_reset
    1
    ;; uint8 _payload_index
    1
    ;; uint8 _rotationMode
    1
    ;; float32 _pitch
    4
    ;; float32 _roll
    4
    ;; float32 _yaw
    4
    ;; float64 _time
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _is_reset
       (if _is_reset (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _payload_index
       (write-byte _payload_index s)
     ;; uint8 _rotationMode
       (write-byte _rotationMode s)
     ;; float32 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _roll
       (sys::poke _roll (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float64 _time
       (sys::poke _time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _is_reset
     (setq _is_reset (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _payload_index
     (setq _payload_index (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _rotationMode
     (setq _rotationMode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _pitch
     (setq _pitch (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _roll
     (setq _roll (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yaw
     (setq _yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float64 _time
     (setq _time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass dji_osdk_ros::GimbalActionResponse
  :super ros::object
  :slots (_result ))

(defmethod dji_osdk_ros::GimbalActionResponse
  (:init
   (&key
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _result __result)
   self)
  (:result
   (&optional (__result :null))
   (if (not (eq __result :null)) (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass dji_osdk_ros::GimbalAction
  :super ros::object
  :slots ())

(setf (get dji_osdk_ros::GimbalAction :md5sum-) "66e203fa5d29e6cbb072590bb5dd1da2")
(setf (get dji_osdk_ros::GimbalAction :datatype-) "dji_osdk_ros/GimbalAction")
(setf (get dji_osdk_ros::GimbalAction :request) dji_osdk_ros::GimbalActionRequest)
(setf (get dji_osdk_ros::GimbalAction :response) dji_osdk_ros::GimbalActionResponse)

(defmethod dji_osdk_ros::GimbalActionRequest
  (:response () (instance dji_osdk_ros::GimbalActionResponse :init)))

(setf (get dji_osdk_ros::GimbalActionRequest :md5sum-) "66e203fa5d29e6cbb072590bb5dd1da2")
(setf (get dji_osdk_ros::GimbalActionRequest :datatype-) "dji_osdk_ros/GimbalActionRequest")
(setf (get dji_osdk_ros::GimbalActionRequest :definition-)
      "Header header
# ts is the time it takes to achieve the desired angle,
# so the shorter the time, the faster the gimbal rotates.

#request
bool is_reset

uint8 payload_index

# rotation cooradiration
# 0 = execute angle command based on the previously set reference point
# 1 = execute angle command based on the current point
uint8 rotationMode

# pitch angle in degree, unit : deg
float32 pitch

# roll angle in degree, unit : deg
float32 roll

# yaw angle in degree, unit : deg
float32 yaw

#execution time, unit : second
float64 time


================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id
---
#response
bool result

")

(setf (get dji_osdk_ros::GimbalActionResponse :md5sum-) "66e203fa5d29e6cbb072590bb5dd1da2")
(setf (get dji_osdk_ros::GimbalActionResponse :datatype-) "dji_osdk_ros/GimbalActionResponse")
(setf (get dji_osdk_ros::GimbalActionResponse :definition-)
      "Header header
# ts is the time it takes to achieve the desired angle,
# so the shorter the time, the faster the gimbal rotates.

#request
bool is_reset

uint8 payload_index

# rotation cooradiration
# 0 = execute angle command based on the previously set reference point
# 1 = execute angle command based on the current point
uint8 rotationMode

# pitch angle in degree, unit : deg
float32 pitch

# roll angle in degree, unit : deg
float32 roll

# yaw angle in degree, unit : deg
float32 yaw

#execution time, unit : second
float64 time


================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id
---
#response
bool result

")



(provide :dji_osdk_ros/GimbalAction "66e203fa5d29e6cbb072590bb5dd1da2")


