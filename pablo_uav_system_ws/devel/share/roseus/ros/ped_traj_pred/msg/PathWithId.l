;; Auto-generated. Do not edit!


(when (boundp 'ped_traj_pred::PathWithId)
  (if (not (find-package "PED_TRAJ_PRED"))
    (make-package "PED_TRAJ_PRED"))
  (shadow 'PathWithId (find-package "PED_TRAJ_PRED")))
(unless (find-package "PED_TRAJ_PRED::PATHWITHID")
  (make-package "PED_TRAJ_PRED::PATHWITHID"))

(in-package "ROS")
;;//! \htmlinclude PathWithId.msg.html
(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ped_traj_pred::PathWithId
  :super ros::object
  :slots (_path_id _path ))

(defmethod ped_traj_pred::PathWithId
  (:init
   (&key
    ((:path_id __path_id) (instance std_msgs::UInt8 :init))
    ((:path __path) (instance nav_msgs::Path :init))
    )
   (send-super :init)
   (setq _path_id __path_id)
   (setq _path __path)
   self)
  (:path_id
   (&rest __path_id)
   (if (keywordp (car __path_id))
       (send* _path_id __path_id)
     (progn
       (if __path_id (setq _path_id (car __path_id)))
       _path_id)))
  (:path
   (&rest __path)
   (if (keywordp (car __path))
       (send* _path __path)
     (progn
       (if __path (setq _path (car __path)))
       _path)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/UInt8 _path_id
    (send _path_id :serialization-length)
    ;; nav_msgs/Path _path
    (send _path :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/UInt8 _path_id
       (send _path_id :serialize s)
     ;; nav_msgs/Path _path
       (send _path :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/UInt8 _path_id
     (send _path_id :deserialize buf ptr-) (incf ptr- (send _path_id :serialization-length))
   ;; nav_msgs/Path _path
     (send _path :deserialize buf ptr-) (incf ptr- (send _path :serialization-length))
   ;;
   self)
  )

(setf (get ped_traj_pred::PathWithId :md5sum-) "38de2ffc133e194dbb7924d6ad97cc02")
(setf (get ped_traj_pred::PathWithId :datatype-) "ped_traj_pred/PathWithId")
(setf (get ped_traj_pred::PathWithId :definition-)
      "std_msgs/UInt8 path_id
nav_msgs/Path path

================================================================================
MSG: std_msgs/UInt8
uint8 data

================================================================================
MSG: nav_msgs/Path
#An array of poses that represents a Path for a robot to follow
Header header
geometry_msgs/PoseStamped[] poses

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

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :ped_traj_pred/PathWithId "38de2ffc133e194dbb7924d6ad97cc02")


