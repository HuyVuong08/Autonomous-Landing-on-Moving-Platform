; Auto-generated. Do not edit!


(cl:in-package dji_osdk_ros-msg)


;//! \htmlinclude WaypointV2CameraActuatorFocalLengthParam.msg.html

(cl:defclass <WaypointV2CameraActuatorFocalLengthParam> (roslisp-msg-protocol:ros-message)
  ((focalLength
    :reader focalLength
    :initarg :focalLength
    :type cl:fixnum
    :initform 0))
)

(cl:defclass WaypointV2CameraActuatorFocalLengthParam (<WaypointV2CameraActuatorFocalLengthParam>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WaypointV2CameraActuatorFocalLengthParam>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WaypointV2CameraActuatorFocalLengthParam)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-msg:<WaypointV2CameraActuatorFocalLengthParam> is deprecated: use dji_osdk_ros-msg:WaypointV2CameraActuatorFocalLengthParam instead.")))

(cl:ensure-generic-function 'focalLength-val :lambda-list '(m))
(cl:defmethod focalLength-val ((m <WaypointV2CameraActuatorFocalLengthParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:focalLength-val is deprecated.  Use dji_osdk_ros-msg:focalLength instead.")
  (focalLength m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<WaypointV2CameraActuatorFocalLengthParam>)))
    "Constants for message type '<WaypointV2CameraActuatorFocalLengthParam>"
  '((:RETRYTIMES . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'WaypointV2CameraActuatorFocalLengthParam)))
    "Constants for message type 'WaypointV2CameraActuatorFocalLengthParam"
  '((:RETRYTIMES . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WaypointV2CameraActuatorFocalLengthParam>) ostream)
  "Serializes a message object of type '<WaypointV2CameraActuatorFocalLengthParam>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'focalLength)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'focalLength)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WaypointV2CameraActuatorFocalLengthParam>) istream)
  "Deserializes a message object of type '<WaypointV2CameraActuatorFocalLengthParam>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'focalLength)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'focalLength)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WaypointV2CameraActuatorFocalLengthParam>)))
  "Returns string type for a message object of type '<WaypointV2CameraActuatorFocalLengthParam>"
  "dji_osdk_ros/WaypointV2CameraActuatorFocalLengthParam")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WaypointV2CameraActuatorFocalLengthParam)))
  "Returns string type for a message object of type 'WaypointV2CameraActuatorFocalLengthParam"
  "dji_osdk_ros/WaypointV2CameraActuatorFocalLengthParam")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WaypointV2CameraActuatorFocalLengthParam>)))
  "Returns md5sum for a message object of type '<WaypointV2CameraActuatorFocalLengthParam>"
  "99efc948569c8b4d6dd86f463dafe65a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WaypointV2CameraActuatorFocalLengthParam)))
  "Returns md5sum for a message object of type 'WaypointV2CameraActuatorFocalLengthParam"
  "99efc948569c8b4d6dd86f463dafe65a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WaypointV2CameraActuatorFocalLengthParam>)))
  "Returns full string definition for message of type '<WaypointV2CameraActuatorFocalLengthParam>"
  (cl:format cl:nil "# This class defines a camera focal length operation for  ``DJIWaypointV2Action_DJIWaypointV2CameraActuatorParam``.~%# Focal length of zoom lens. Valid range is [``DJICamera_DJICameraOpticalZoomSpec_minFocalLength``,~%# ``DJICamera_DJICameraOpticalZoomSpec_minFocalLength``] and must be a multiple of~%# ``DJICamera_DJICameraOpticalZoomSpec_focalLengthStep``.~%#  Only support by those camera ``DJICamera_CameraSettings_isOpticalZoomSupported`` return ``TRUE``.~%  uint16 focalLength~%~%  uint8 retryTimes = 1~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WaypointV2CameraActuatorFocalLengthParam)))
  "Returns full string definition for message of type 'WaypointV2CameraActuatorFocalLengthParam"
  (cl:format cl:nil "# This class defines a camera focal length operation for  ``DJIWaypointV2Action_DJIWaypointV2CameraActuatorParam``.~%# Focal length of zoom lens. Valid range is [``DJICamera_DJICameraOpticalZoomSpec_minFocalLength``,~%# ``DJICamera_DJICameraOpticalZoomSpec_minFocalLength``] and must be a multiple of~%# ``DJICamera_DJICameraOpticalZoomSpec_focalLengthStep``.~%#  Only support by those camera ``DJICamera_CameraSettings_isOpticalZoomSupported`` return ``TRUE``.~%  uint16 focalLength~%~%  uint8 retryTimes = 1~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WaypointV2CameraActuatorFocalLengthParam>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WaypointV2CameraActuatorFocalLengthParam>))
  "Converts a ROS message object to a list"
  (cl:list 'WaypointV2CameraActuatorFocalLengthParam
    (cl:cons ':focalLength (focalLength msg))
))
