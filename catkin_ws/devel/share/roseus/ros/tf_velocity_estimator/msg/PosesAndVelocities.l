;; Auto-generated. Do not edit!


(when (boundp 'tf_velocity_estimator::PosesAndVelocities)
  (if (not (find-package "TF_VELOCITY_ESTIMATOR"))
    (make-package "TF_VELOCITY_ESTIMATOR"))
  (shadow 'PosesAndVelocities (find-package "TF_VELOCITY_ESTIMATOR")))
(unless (find-package "TF_VELOCITY_ESTIMATOR::POSESANDVELOCITIES")
  (make-package "TF_VELOCITY_ESTIMATOR::POSESANDVELOCITIES"))

(in-package "ROS")
;;//! \htmlinclude PosesAndVelocities.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass tf_velocity_estimator::PosesAndVelocities
  :super ros::object
  :slots (_latest_poses _latest_velocities ))

(defmethod tf_velocity_estimator::PosesAndVelocities
  (:init
   (&key
    ((:latest_poses __latest_poses) ())
    ((:latest_velocities __latest_velocities) ())
    )
   (send-super :init)
   (setq _latest_poses __latest_poses)
   (setq _latest_velocities __latest_velocities)
   self)
  (:latest_poses
   (&rest __latest_poses)
   (if (keywordp (car __latest_poses))
       (send* _latest_poses __latest_poses)
     (progn
       (if __latest_poses (setq _latest_poses (car __latest_poses)))
       _latest_poses)))
  (:latest_velocities
   (&rest __latest_velocities)
   (if (keywordp (car __latest_velocities))
       (send* _latest_velocities __latest_velocities)
     (progn
       (if __latest_velocities (setq _latest_velocities (car __latest_velocities)))
       _latest_velocities)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseStamped[] _latest_poses
    (apply #'+ (send-all _latest_poses :serialization-length)) 4
    ;; tf_velocity_estimator/Velocity[] _latest_velocities
    (apply #'+ (send-all _latest_velocities :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped[] _latest_poses
     (write-long (length _latest_poses) s)
     (dolist (elem _latest_poses)
       (send elem :serialize s)
       )
     ;; tf_velocity_estimator/Velocity[] _latest_velocities
     (write-long (length _latest_velocities) s)
     (dolist (elem _latest_velocities)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped[] _latest_poses
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _latest_poses (let (r) (dotimes (i n) (push (instance geometry_msgs::PoseStamped :init) r)) r))
     (dolist (elem- _latest_poses)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; tf_velocity_estimator/Velocity[] _latest_velocities
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _latest_velocities (let (r) (dotimes (i n) (push (instance tf_velocity_estimator::Velocity :init) r)) r))
     (dolist (elem- _latest_velocities)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get tf_velocity_estimator::PosesAndVelocities :md5sum-) "16dbd35e7e0840434e00d0a0200d9f83")
(setf (get tf_velocity_estimator::PosesAndVelocities :datatype-) "tf_velocity_estimator/PosesAndVelocities")
(setf (get tf_velocity_estimator::PosesAndVelocities :definition-)
      "geometry_msgs/PoseStamped[] latest_poses
Velocity[] latest_velocities
================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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

================================================================================
MSG: tf_velocity_estimator/Velocity
float32 vx
float32 vy
float32 vz
")



(provide :tf_velocity_estimator/PosesAndVelocities "16dbd35e7e0840434e00d0a0200d9f83")


