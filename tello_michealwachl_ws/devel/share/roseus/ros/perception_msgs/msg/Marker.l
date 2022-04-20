;; Auto-generated. Do not edit!


(when (boundp 'perception_msgs::Marker)
  (if (not (find-package "PERCEPTION_MSGS"))
    (make-package "PERCEPTION_MSGS"))
  (shadow 'Marker (find-package "PERCEPTION_MSGS")))
(unless (find-package "PERCEPTION_MSGS::MARKER")
  (make-package "PERCEPTION_MSGS::MARKER"))

(in-package "ROS")
;;//! \htmlinclude Marker.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass perception_msgs::Marker
  :super ros::object
  :slots (_header _id _size _labeledPointsInImage _is3dReconstructed _pose _confidence ))

(defmethod perception_msgs::Marker
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:id __id) "")
    ((:size __size) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:labeledPointsInImage __labeledPointsInImage) (let (r) (dotimes (i 0) (push (instance perception_msgs::LabeledPointInImage :init) r)) r))
    ((:is3dReconstructed __is3dReconstructed) nil)
    ((:pose __pose) (instance geometry_msgs::PoseWithCovariance :init))
    ((:confidence __confidence) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _id (string __id))
   (setq _size __size)
   (setq _labeledPointsInImage __labeledPointsInImage)
   (setq _is3dReconstructed __is3dReconstructed)
   (setq _pose __pose)
   (setq _confidence (float __confidence))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:size
   (&optional __size)
   (if __size (setq _size __size)) _size)
  (:labeledPointsInImage
   (&rest __labeledPointsInImage)
   (if (keywordp (car __labeledPointsInImage))
       (send* _labeledPointsInImage __labeledPointsInImage)
     (progn
       (if __labeledPointsInImage (setq _labeledPointsInImage (car __labeledPointsInImage)))
       _labeledPointsInImage)))
  (:is3dReconstructed
   (&optional __is3dReconstructed)
   (if __is3dReconstructed (setq _is3dReconstructed __is3dReconstructed)) _is3dReconstructed)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _id
    4 (length _id)
    ;; float32[] _size
    (* 4    (length _size)) 4
    ;; perception_msgs/LabeledPointInImage[] _labeledPointsInImage
    (apply #'+ (send-all _labeledPointsInImage :serialization-length)) 4
    ;; bool _is3dReconstructed
    1
    ;; geometry_msgs/PoseWithCovariance _pose
    (send _pose :serialization-length)
    ;; float64 _confidence
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; float32[] _size
     (write-long (length _size) s)
     (dotimes (i (length _size))
       (sys::poke (elt _size i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; perception_msgs/LabeledPointInImage[] _labeledPointsInImage
     (write-long (length _labeledPointsInImage) s)
     (dolist (elem _labeledPointsInImage)
       (send elem :serialize s)
       )
     ;; bool _is3dReconstructed
       (if _is3dReconstructed (write-byte -1 s) (write-byte 0 s))
     ;; geometry_msgs/PoseWithCovariance _pose
       (send _pose :serialize s)
     ;; float64 _confidence
       (sys::poke _confidence (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32[] _size
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _size (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _size i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; perception_msgs/LabeledPointInImage[] _labeledPointsInImage
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _labeledPointsInImage (let (r) (dotimes (i n) (push (instance perception_msgs::LabeledPointInImage :init) r)) r))
     (dolist (elem- _labeledPointsInImage)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bool _is3dReconstructed
     (setq _is3dReconstructed (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; geometry_msgs/PoseWithCovariance _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; float64 _confidence
     (setq _confidence (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get perception_msgs::Marker :md5sum-) "da8deb44ff01a0f90906148027b06f04")
(setf (get perception_msgs::Marker :datatype-) "perception_msgs/Marker")
(setf (get perception_msgs::Marker :definition-)
      "# Header. Needed for the frame_id
Header header

# Id of the visual marker
string id

# Size of the visual marker if available
float32[] size

# Points of the visual marker in the Image
perception_msgs/LabeledPointInImage[] labeledPointsInImage

# Flag for the 3D reconstruction
bool is3dReconstructed

# Pose of the Visual Marker wrt Camera if calibration file is available
geometry_msgs/PoseWithCovariance pose

# Confidence in the detection. TODO
float64 confidence

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
MSG: perception_msgs/LabeledPointInImage
# string value. Empty if there is no label
string value
# Point with x,y coordinates of the point in the image
PointInImage pointsInImage

================================================================================
MSG: perception_msgs/PointInImage
# x coordinate of the point in the image
float32 x
# y coordinate of the poitn in the image
float32 y

================================================================================
MSG: geometry_msgs/PoseWithCovariance
# This represents a pose in free space with uncertainty.

Pose pose

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

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



(provide :perception_msgs/Marker "da8deb44ff01a0f90906148027b06f04")


