;; Auto-generated. Do not edit!


(when (boundp 'takeoff::GroundtruthAltitude)
  (if (not (find-package "TAKEOFF"))
    (make-package "TAKEOFF"))
  (shadow 'GroundtruthAltitude (find-package "TAKEOFF")))
(unless (find-package "TAKEOFF::GROUNDTRUTHALTITUDE")
  (make-package "TAKEOFF::GROUNDTRUTHALTITUDE"))

(in-package "ROS")
;;//! \htmlinclude GroundtruthAltitude.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass takeoff::GroundtruthAltitude
  :super ros::object
  :slots (_header _gt_altitude ))

(defmethod takeoff::GroundtruthAltitude
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:gt_altitude __gt_altitude) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _gt_altitude (float __gt_altitude))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:gt_altitude
   (&optional __gt_altitude)
   (if __gt_altitude (setq _gt_altitude __gt_altitude)) _gt_altitude)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _gt_altitude
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _gt_altitude
       (sys::poke _gt_altitude (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _gt_altitude
     (setq _gt_altitude (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get takeoff::GroundtruthAltitude :md5sum-) "018e1e2bc342cacf34a44088104e49e3")
(setf (get takeoff::GroundtruthAltitude :datatype-) "takeoff/GroundtruthAltitude")
(setf (get takeoff::GroundtruthAltitude :definition-)
      "Header header
float32 gt_altitude
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
# 0: no frame
# 1: global frame
string frame_id

")



(provide :takeoff/GroundtruthAltitude "018e1e2bc342cacf34a44088104e49e3")


