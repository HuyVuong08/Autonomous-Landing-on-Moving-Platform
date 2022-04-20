; Auto-generated. Do not edit!


(cl:in-package perception_msgs-msg)


;//! \htmlinclude LabeledPointInImage.msg.html

(cl:defclass <LabeledPointInImage> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:string
    :initform "")
   (pointsInImage
    :reader pointsInImage
    :initarg :pointsInImage
    :type perception_msgs-msg:PointInImage
    :initform (cl:make-instance 'perception_msgs-msg:PointInImage)))
)

(cl:defclass LabeledPointInImage (<LabeledPointInImage>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LabeledPointInImage>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LabeledPointInImage)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_msgs-msg:<LabeledPointInImage> is deprecated: use perception_msgs-msg:LabeledPointInImage instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <LabeledPointInImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:value-val is deprecated.  Use perception_msgs-msg:value instead.")
  (value m))

(cl:ensure-generic-function 'pointsInImage-val :lambda-list '(m))
(cl:defmethod pointsInImage-val ((m <LabeledPointInImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:pointsInImage-val is deprecated.  Use perception_msgs-msg:pointsInImage instead.")
  (pointsInImage m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LabeledPointInImage>) ostream)
  "Serializes a message object of type '<LabeledPointInImage>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'value))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pointsInImage) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LabeledPointInImage>) istream)
  "Deserializes a message object of type '<LabeledPointInImage>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'value) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'value) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pointsInImage) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LabeledPointInImage>)))
  "Returns string type for a message object of type '<LabeledPointInImage>"
  "perception_msgs/LabeledPointInImage")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LabeledPointInImage)))
  "Returns string type for a message object of type 'LabeledPointInImage"
  "perception_msgs/LabeledPointInImage")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LabeledPointInImage>)))
  "Returns md5sum for a message object of type '<LabeledPointInImage>"
  "1e84abf3e87ce958922be1dad2422c33")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LabeledPointInImage)))
  "Returns md5sum for a message object of type 'LabeledPointInImage"
  "1e84abf3e87ce958922be1dad2422c33")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LabeledPointInImage>)))
  "Returns full string definition for message of type '<LabeledPointInImage>"
  (cl:format cl:nil "# string value. Empty if there is no label~%string value~%# Point with x,y coordinates of the point in the image~%PointInImage pointsInImage~%~%================================================================================~%MSG: perception_msgs/PointInImage~%# x coordinate of the point in the image~%float32 x~%# y coordinate of the poitn in the image~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LabeledPointInImage)))
  "Returns full string definition for message of type 'LabeledPointInImage"
  (cl:format cl:nil "# string value. Empty if there is no label~%string value~%# Point with x,y coordinates of the point in the image~%PointInImage pointsInImage~%~%================================================================================~%MSG: perception_msgs/PointInImage~%# x coordinate of the point in the image~%float32 x~%# y coordinate of the poitn in the image~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LabeledPointInImage>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'value))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pointsInImage))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LabeledPointInImage>))
  "Converts a ROS message object to a list"
  (cl:list 'LabeledPointInImage
    (cl:cons ':value (value msg))
    (cl:cons ':pointsInImage (pointsInImage msg))
))
