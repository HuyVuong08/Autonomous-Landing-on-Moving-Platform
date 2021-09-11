; Auto-generated. Do not edit!


(cl:in-package dji_osdk_ros-msg)


;//! \htmlinclude WaypointV2CameraActuator.msg.html

(cl:defclass <WaypointV2CameraActuator> (roslisp-msg-protocol:ros-message)
  ((actuatorIndex
    :reader actuatorIndex
    :initarg :actuatorIndex
    :type cl:fixnum
    :initform 0)
   (DJIWaypointV2ActionActuatorCameraOperationType
    :reader DJIWaypointV2ActionActuatorCameraOperationType
    :initarg :DJIWaypointV2ActionActuatorCameraOperationType
    :type cl:fixnum
    :initform 0)
   (focusParam
    :reader focusParam
    :initarg :focusParam
    :type dji_osdk_ros-msg:WaypointV2CameraActuatorFocusParam
    :initform (cl:make-instance 'dji_osdk_ros-msg:WaypointV2CameraActuatorFocusParam))
   (zoomParam
    :reader zoomParam
    :initarg :zoomParam
    :type dji_osdk_ros-msg:WaypointV2CameraActuatorFocalLengthParam
    :initform (cl:make-instance 'dji_osdk_ros-msg:WaypointV2CameraActuatorFocalLengthParam)))
)

(cl:defclass WaypointV2CameraActuator (<WaypointV2CameraActuator>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WaypointV2CameraActuator>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WaypointV2CameraActuator)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-msg:<WaypointV2CameraActuator> is deprecated: use dji_osdk_ros-msg:WaypointV2CameraActuator instead.")))

(cl:ensure-generic-function 'actuatorIndex-val :lambda-list '(m))
(cl:defmethod actuatorIndex-val ((m <WaypointV2CameraActuator>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:actuatorIndex-val is deprecated.  Use dji_osdk_ros-msg:actuatorIndex instead.")
  (actuatorIndex m))

(cl:ensure-generic-function 'DJIWaypointV2ActionActuatorCameraOperationType-val :lambda-list '(m))
(cl:defmethod DJIWaypointV2ActionActuatorCameraOperationType-val ((m <WaypointV2CameraActuator>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:DJIWaypointV2ActionActuatorCameraOperationType-val is deprecated.  Use dji_osdk_ros-msg:DJIWaypointV2ActionActuatorCameraOperationType instead.")
  (DJIWaypointV2ActionActuatorCameraOperationType m))

(cl:ensure-generic-function 'focusParam-val :lambda-list '(m))
(cl:defmethod focusParam-val ((m <WaypointV2CameraActuator>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:focusParam-val is deprecated.  Use dji_osdk_ros-msg:focusParam instead.")
  (focusParam m))

(cl:ensure-generic-function 'zoomParam-val :lambda-list '(m))
(cl:defmethod zoomParam-val ((m <WaypointV2CameraActuator>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:zoomParam-val is deprecated.  Use dji_osdk_ros-msg:zoomParam instead.")
  (zoomParam m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<WaypointV2CameraActuator>)))
    "Constants for message type '<WaypointV2CameraActuator>"
  '((:DJIWAYPOINTV2ACTIONACTUATORCAMERAOPERATIONTYPETAKEPHOTO . 1)
    (:DJIWAYPOINTV2ACTIONACTUATORCAMERAOPERATIONTYPESTARTRECORDVIDEO . 2)
    (:DJIWAYPOINTV2ACTIONACTUATORCAMERAOPERATIONTYPESTOPRECORDVIDEO . 3)
    (:DJIWAYPOINTV2ACTIONACTUATORCAMERAOPERATIONTYPEFOCUS . 4)
    (:DJIWAYPOINTV2ACTIONACTUATORCAMERAOPERATIONTYPEFOCALLENGTH . 5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'WaypointV2CameraActuator)))
    "Constants for message type 'WaypointV2CameraActuator"
  '((:DJIWAYPOINTV2ACTIONACTUATORCAMERAOPERATIONTYPETAKEPHOTO . 1)
    (:DJIWAYPOINTV2ACTIONACTUATORCAMERAOPERATIONTYPESTARTRECORDVIDEO . 2)
    (:DJIWAYPOINTV2ACTIONACTUATORCAMERAOPERATIONTYPESTOPRECORDVIDEO . 3)
    (:DJIWAYPOINTV2ACTIONACTUATORCAMERAOPERATIONTYPEFOCUS . 4)
    (:DJIWAYPOINTV2ACTIONACTUATORCAMERAOPERATIONTYPEFOCALLENGTH . 5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WaypointV2CameraActuator>) ostream)
  "Serializes a message object of type '<WaypointV2CameraActuator>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'actuatorIndex)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'actuatorIndex)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'DJIWaypointV2ActionActuatorCameraOperationType)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'DJIWaypointV2ActionActuatorCameraOperationType)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'focusParam) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'zoomParam) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WaypointV2CameraActuator>) istream)
  "Deserializes a message object of type '<WaypointV2CameraActuator>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'actuatorIndex)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'actuatorIndex)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'DJIWaypointV2ActionActuatorCameraOperationType)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'DJIWaypointV2ActionActuatorCameraOperationType)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'focusParam) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'zoomParam) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WaypointV2CameraActuator>)))
  "Returns string type for a message object of type '<WaypointV2CameraActuator>"
  "dji_osdk_ros/WaypointV2CameraActuator")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WaypointV2CameraActuator)))
  "Returns string type for a message object of type 'WaypointV2CameraActuator"
  "dji_osdk_ros/WaypointV2CameraActuator")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WaypointV2CameraActuator>)))
  "Returns md5sum for a message object of type '<WaypointV2CameraActuator>"
  "70a055c9fb9f49f67d8f5bf884fe592d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WaypointV2CameraActuator)))
  "Returns md5sum for a message object of type 'WaypointV2CameraActuator"
  "70a055c9fb9f49f67d8f5bf884fe592d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WaypointV2CameraActuator>)))
  "Returns full string definition for message of type '<WaypointV2CameraActuator>"
  (cl:format cl:nil "# This determines how the camera will be performed when a waypoint mission is executing.~%#constant for DJIWaypointV2ActionActuatorCameraOperationType~%# Starts to shoot a photo.~%uint16 DJIWaypointV2ActionActuatorCameraOperationTypeTakePhoto = 1~%# Starts to record a video.~%uint16 DJIWaypointV2ActionActuatorCameraOperationTypeStartRecordVideo = 2~%# Stops to record a video.~%uint16 DJIWaypointV2ActionActuatorCameraOperationTypeStopRecordVideo = 3~%# Starts focus.~%uint16 DJIWaypointV2ActionActuatorCameraOperationTypeFocus = 4~%# Starts focal lenth. Only support those support flocal lenth cameras.~%uint16 DJIWaypointV2ActionActuatorCameraOperationTypeFocalLength = 5~%~%uint16 actuatorIndex   # The index of actuator. It is valid when the diagnostics is related~%                      # to camera or gimbal and the connected product has multiple gimbals and cameras.~%~%uint16 DJIWaypointV2ActionActuatorCameraOperationType~%# you can only choose one to config.~%WaypointV2CameraActuatorFocusParam focusParam  # The parameters for camera focus operation. It is valid only when~%                                       # ``DJIWaypointV2Action_DJIWaypointV2CameraActuatorParam_operationType`` is~%                                       # ``DJIWaypointV2MissionV2_DJIWaypointV2ActionActuatorCameraOperationType_Focus``~%WaypointV2CameraActuatorFocalLengthParam zoomParam # The parameters for camera focus length operation. It is valid only when~%                                           # ``DJIWaypointV2Action_DJIWaypointV2CameraActuatorParam_operationType`` is~%                                           # ``DJIWaypointV2MissionV2_DJIWaypointV2ActionActuatorCameraOperationType_FocalLength``~%================================================================================~%MSG: dji_osdk_ros/WaypointV2CameraActuatorFocusParam~%# This class defines a camera focus operation for ``DJIWaypointV2Action_DJIWaypointV2CameraActuatorParam``.~%# The lens focus target point. When the focus mode is auto, the target point~%# is the focal point. When the focus mode is manual, the target point is the zoom~%# out area if the focus assistant is enabled for the manual mode.~%#  The range for x and y is from 0.0 to 1.0. The point [0.0, 0.0] represents the top-left angle of the screen.~%  ~%  float32 x # x axis focus point value.range: [0,1]~%  float32 y # y axis focus point value.range: [0,1]~%  uint8 regionType #focus type:0:point focus,1:rectangle focus~%  float32 width #Normalized focus area width(0,1)~%  float32 height # Normalized focus area height(0,1)~%  uint8 retryTimes = 1~%================================================================================~%MSG: dji_osdk_ros/WaypointV2CameraActuatorFocalLengthParam~%# This class defines a camera focal length operation for  ``DJIWaypointV2Action_DJIWaypointV2CameraActuatorParam``.~%# Focal length of zoom lens. Valid range is [``DJICamera_DJICameraOpticalZoomSpec_minFocalLength``,~%# ``DJICamera_DJICameraOpticalZoomSpec_minFocalLength``] and must be a multiple of~%# ``DJICamera_DJICameraOpticalZoomSpec_focalLengthStep``.~%#  Only support by those camera ``DJICamera_CameraSettings_isOpticalZoomSupported`` return ``TRUE``.~%  uint16 focalLength~%~%  uint8 retryTimes = 1~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WaypointV2CameraActuator)))
  "Returns full string definition for message of type 'WaypointV2CameraActuator"
  (cl:format cl:nil "# This determines how the camera will be performed when a waypoint mission is executing.~%#constant for DJIWaypointV2ActionActuatorCameraOperationType~%# Starts to shoot a photo.~%uint16 DJIWaypointV2ActionActuatorCameraOperationTypeTakePhoto = 1~%# Starts to record a video.~%uint16 DJIWaypointV2ActionActuatorCameraOperationTypeStartRecordVideo = 2~%# Stops to record a video.~%uint16 DJIWaypointV2ActionActuatorCameraOperationTypeStopRecordVideo = 3~%# Starts focus.~%uint16 DJIWaypointV2ActionActuatorCameraOperationTypeFocus = 4~%# Starts focal lenth. Only support those support flocal lenth cameras.~%uint16 DJIWaypointV2ActionActuatorCameraOperationTypeFocalLength = 5~%~%uint16 actuatorIndex   # The index of actuator. It is valid when the diagnostics is related~%                      # to camera or gimbal and the connected product has multiple gimbals and cameras.~%~%uint16 DJIWaypointV2ActionActuatorCameraOperationType~%# you can only choose one to config.~%WaypointV2CameraActuatorFocusParam focusParam  # The parameters for camera focus operation. It is valid only when~%                                       # ``DJIWaypointV2Action_DJIWaypointV2CameraActuatorParam_operationType`` is~%                                       # ``DJIWaypointV2MissionV2_DJIWaypointV2ActionActuatorCameraOperationType_Focus``~%WaypointV2CameraActuatorFocalLengthParam zoomParam # The parameters for camera focus length operation. It is valid only when~%                                           # ``DJIWaypointV2Action_DJIWaypointV2CameraActuatorParam_operationType`` is~%                                           # ``DJIWaypointV2MissionV2_DJIWaypointV2ActionActuatorCameraOperationType_FocalLength``~%================================================================================~%MSG: dji_osdk_ros/WaypointV2CameraActuatorFocusParam~%# This class defines a camera focus operation for ``DJIWaypointV2Action_DJIWaypointV2CameraActuatorParam``.~%# The lens focus target point. When the focus mode is auto, the target point~%# is the focal point. When the focus mode is manual, the target point is the zoom~%# out area if the focus assistant is enabled for the manual mode.~%#  The range for x and y is from 0.0 to 1.0. The point [0.0, 0.0] represents the top-left angle of the screen.~%  ~%  float32 x # x axis focus point value.range: [0,1]~%  float32 y # y axis focus point value.range: [0,1]~%  uint8 regionType #focus type:0:point focus,1:rectangle focus~%  float32 width #Normalized focus area width(0,1)~%  float32 height # Normalized focus area height(0,1)~%  uint8 retryTimes = 1~%================================================================================~%MSG: dji_osdk_ros/WaypointV2CameraActuatorFocalLengthParam~%# This class defines a camera focal length operation for  ``DJIWaypointV2Action_DJIWaypointV2CameraActuatorParam``.~%# Focal length of zoom lens. Valid range is [``DJICamera_DJICameraOpticalZoomSpec_minFocalLength``,~%# ``DJICamera_DJICameraOpticalZoomSpec_minFocalLength``] and must be a multiple of~%# ``DJICamera_DJICameraOpticalZoomSpec_focalLengthStep``.~%#  Only support by those camera ``DJICamera_CameraSettings_isOpticalZoomSupported`` return ``TRUE``.~%  uint16 focalLength~%~%  uint8 retryTimes = 1~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WaypointV2CameraActuator>))
  (cl:+ 0
     2
     2
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'focusParam))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'zoomParam))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WaypointV2CameraActuator>))
  "Converts a ROS message object to a list"
  (cl:list 'WaypointV2CameraActuator
    (cl:cons ':actuatorIndex (actuatorIndex msg))
    (cl:cons ':DJIWaypointV2ActionActuatorCameraOperationType (DJIWaypointV2ActionActuatorCameraOperationType msg))
    (cl:cons ':focusParam (focusParam msg))
    (cl:cons ':zoomParam (zoomParam msg))
))
