; Auto-generated. Do not edit!


(cl:in-package ardrone_as-msg)


;//! \htmlinclude ArdroneResult.msg.html

(cl:defclass <ArdroneResult> (roslisp-msg-protocol:ros-message)
  ((allPictures
    :reader allPictures
    :initarg :allPictures
    :type (cl:vector sensor_msgs-msg:CompressedImage)
   :initform (cl:make-array 0 :element-type 'sensor_msgs-msg:CompressedImage :initial-element (cl:make-instance 'sensor_msgs-msg:CompressedImage))))
)

(cl:defclass ArdroneResult (<ArdroneResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ArdroneResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ArdroneResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ardrone_as-msg:<ArdroneResult> is deprecated: use ardrone_as-msg:ArdroneResult instead.")))

(cl:ensure-generic-function 'allPictures-val :lambda-list '(m))
(cl:defmethod allPictures-val ((m <ArdroneResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ardrone_as-msg:allPictures-val is deprecated.  Use ardrone_as-msg:allPictures instead.")
  (allPictures m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ArdroneResult>) ostream)
  "Serializes a message object of type '<ArdroneResult>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'allPictures))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'allPictures))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ArdroneResult>) istream)
  "Deserializes a message object of type '<ArdroneResult>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'allPictures) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'allPictures)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'sensor_msgs-msg:CompressedImage))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ArdroneResult>)))
  "Returns string type for a message object of type '<ArdroneResult>"
  "ardrone_as/ArdroneResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArdroneResult)))
  "Returns string type for a message object of type 'ArdroneResult"
  "ardrone_as/ArdroneResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ArdroneResult>)))
  "Returns md5sum for a message object of type '<ArdroneResult>"
  "fd8074274123c31a020701b6010cff19")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ArdroneResult)))
  "Returns md5sum for a message object of type 'ArdroneResult"
  "fd8074274123c31a020701b6010cff19")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ArdroneResult>)))
  "Returns full string definition for message of type '<ArdroneResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result~%sensor_msgs/CompressedImage[] allPictures # an array containing all the pictures taken along the nseconds~%~%~%================================================================================~%MSG: sensor_msgs/CompressedImage~%# This message contains a compressed image~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%~%string format        # Specifies the format of the data~%                     #   Acceptable values:~%                     #     jpeg, png~%uint8[] data         # Compressed image buffer~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ArdroneResult)))
  "Returns full string definition for message of type 'ArdroneResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result~%sensor_msgs/CompressedImage[] allPictures # an array containing all the pictures taken along the nseconds~%~%~%================================================================================~%MSG: sensor_msgs/CompressedImage~%# This message contains a compressed image~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%~%string format        # Specifies the format of the data~%                     #   Acceptable values:~%                     #     jpeg, png~%uint8[] data         # Compressed image buffer~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ArdroneResult>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'allPictures) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ArdroneResult>))
  "Converts a ROS message object to a list"
  (cl:list 'ArdroneResult
    (cl:cons ':allPictures (allPictures msg))
))
