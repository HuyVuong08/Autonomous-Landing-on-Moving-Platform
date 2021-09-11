; Auto-generated. Do not edit!


(cl:in-package dji_osdk_ros-msg)


;//! \htmlinclude HMSPushInfo.msg.html

(cl:defclass <HMSPushInfo> (roslisp-msg-protocol:ros-message)
  ((alarmID
    :reader alarmID
    :initarg :alarmID
    :type cl:integer
    :initform 0)
   (sensorIndex
    :reader sensorIndex
    :initarg :sensorIndex
    :type cl:fixnum
    :initform 0)
   (reportLevel
    :reader reportLevel
    :initarg :reportLevel
    :type cl:fixnum
    :initform 0))
)

(cl:defclass HMSPushInfo (<HMSPushInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HMSPushInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HMSPushInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-msg:<HMSPushInfo> is deprecated: use dji_osdk_ros-msg:HMSPushInfo instead.")))

(cl:ensure-generic-function 'alarmID-val :lambda-list '(m))
(cl:defmethod alarmID-val ((m <HMSPushInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:alarmID-val is deprecated.  Use dji_osdk_ros-msg:alarmID instead.")
  (alarmID m))

(cl:ensure-generic-function 'sensorIndex-val :lambda-list '(m))
(cl:defmethod sensorIndex-val ((m <HMSPushInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:sensorIndex-val is deprecated.  Use dji_osdk_ros-msg:sensorIndex instead.")
  (sensorIndex m))

(cl:ensure-generic-function 'reportLevel-val :lambda-list '(m))
(cl:defmethod reportLevel-val ((m <HMSPushInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:reportLevel-val is deprecated.  Use dji_osdk_ros-msg:reportLevel instead.")
  (reportLevel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HMSPushInfo>) ostream)
  "Serializes a message object of type '<HMSPushInfo>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'alarmID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'alarmID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'alarmID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'alarmID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sensorIndex)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reportLevel)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HMSPushInfo>) istream)
  "Deserializes a message object of type '<HMSPushInfo>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'alarmID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'alarmID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'alarmID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'alarmID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sensorIndex)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reportLevel)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HMSPushInfo>)))
  "Returns string type for a message object of type '<HMSPushInfo>"
  "dji_osdk_ros/HMSPushInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HMSPushInfo)))
  "Returns string type for a message object of type 'HMSPushInfo"
  "dji_osdk_ros/HMSPushInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HMSPushInfo>)))
  "Returns md5sum for a message object of type '<HMSPushInfo>"
  "ce70d5cd1d8f70130b2a622841cf2bac")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HMSPushInfo)))
  "Returns md5sum for a message object of type 'HMSPushInfo"
  "ce70d5cd1d8f70130b2a622841cf2bac")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HMSPushInfo>)))
  "Returns full string definition for message of type '<HMSPushInfo>"
  (cl:format cl:nil "uint32 alarmID     #/*! error code*/~%uint8  sensorIndex #/*! fault sensor's index*/~%uint8  reportLevel #/*! fault level ,0-4,0 is no error,4 is highest*/~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HMSPushInfo)))
  "Returns full string definition for message of type 'HMSPushInfo"
  (cl:format cl:nil "uint32 alarmID     #/*! error code*/~%uint8  sensorIndex #/*! fault sensor's index*/~%uint8  reportLevel #/*! fault level ,0-4,0 is no error,4 is highest*/~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HMSPushInfo>))
  (cl:+ 0
     4
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HMSPushInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'HMSPushInfo
    (cl:cons ':alarmID (alarmID msg))
    (cl:cons ':sensorIndex (sensorIndex msg))
    (cl:cons ':reportLevel (reportLevel msg))
))
