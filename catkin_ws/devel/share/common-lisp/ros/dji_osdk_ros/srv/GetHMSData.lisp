; Auto-generated. Do not edit!


(cl:in-package dji_osdk_ros-srv)


;//! \htmlinclude GetHMSData-request.msg.html

(cl:defclass <GetHMSData-request> (roslisp-msg-protocol:ros-message)
  ((enable
    :reader enable
    :initarg :enable
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GetHMSData-request (<GetHMSData-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetHMSData-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetHMSData-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-srv:<GetHMSData-request> is deprecated: use dji_osdk_ros-srv:GetHMSData-request instead.")))

(cl:ensure-generic-function 'enable-val :lambda-list '(m))
(cl:defmethod enable-val ((m <GetHMSData-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:enable-val is deprecated.  Use dji_osdk_ros-srv:enable instead.")
  (enable m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetHMSData-request>) ostream)
  "Serializes a message object of type '<GetHMSData-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetHMSData-request>) istream)
  "Deserializes a message object of type '<GetHMSData-request>"
    (cl:setf (cl:slot-value msg 'enable) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetHMSData-request>)))
  "Returns string type for a service object of type '<GetHMSData-request>"
  "dji_osdk_ros/GetHMSDataRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetHMSData-request)))
  "Returns string type for a service object of type 'GetHMSData-request"
  "dji_osdk_ros/GetHMSDataRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetHMSData-request>)))
  "Returns md5sum for a message object of type '<GetHMSData-request>"
  "1ec4559c4a22067560534b61ee437470")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetHMSData-request)))
  "Returns md5sum for a message object of type 'GetHMSData-request"
  "1ec4559c4a22067560534b61ee437470")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetHMSData-request>)))
  "Returns full string definition for message of type '<GetHMSData-request>"
  (cl:format cl:nil "#request~%bool enable~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetHMSData-request)))
  "Returns full string definition for message of type 'GetHMSData-request"
  (cl:format cl:nil "#request~%bool enable~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetHMSData-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetHMSData-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetHMSData-request
    (cl:cons ':enable (enable msg))
))
;//! \htmlinclude GetHMSData-response.msg.html

(cl:defclass <GetHMSData-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil)
   (deviceIndex
    :reader deviceIndex
    :initarg :deviceIndex
    :type cl:fixnum
    :initform 0)
   (errList
    :reader errList
    :initarg :errList
    :type (cl:vector dji_osdk_ros-msg:HMSPushInfo)
   :initform (cl:make-array 0 :element-type 'dji_osdk_ros-msg:HMSPushInfo :initial-element (cl:make-instance 'dji_osdk_ros-msg:HMSPushInfo)))
   (timeStamp
    :reader timeStamp
    :initarg :timeStamp
    :type cl:integer
    :initform 0))
)

(cl:defclass GetHMSData-response (<GetHMSData-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetHMSData-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetHMSData-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-srv:<GetHMSData-response> is deprecated: use dji_osdk_ros-srv:GetHMSData-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <GetHMSData-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:result-val is deprecated.  Use dji_osdk_ros-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'deviceIndex-val :lambda-list '(m))
(cl:defmethod deviceIndex-val ((m <GetHMSData-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:deviceIndex-val is deprecated.  Use dji_osdk_ros-srv:deviceIndex instead.")
  (deviceIndex m))

(cl:ensure-generic-function 'errList-val :lambda-list '(m))
(cl:defmethod errList-val ((m <GetHMSData-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:errList-val is deprecated.  Use dji_osdk_ros-srv:errList instead.")
  (errList m))

(cl:ensure-generic-function 'timeStamp-val :lambda-list '(m))
(cl:defmethod timeStamp-val ((m <GetHMSData-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:timeStamp-val is deprecated.  Use dji_osdk_ros-srv:timeStamp instead.")
  (timeStamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetHMSData-response>) ostream)
  "Serializes a message object of type '<GetHMSData-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'deviceIndex)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'errList))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'errList))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timeStamp)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetHMSData-response>) istream)
  "Deserializes a message object of type '<GetHMSData-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'deviceIndex)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'errList) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'errList)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'dji_osdk_ros-msg:HMSPushInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetHMSData-response>)))
  "Returns string type for a service object of type '<GetHMSData-response>"
  "dji_osdk_ros/GetHMSDataResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetHMSData-response)))
  "Returns string type for a service object of type 'GetHMSData-response"
  "dji_osdk_ros/GetHMSDataResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetHMSData-response>)))
  "Returns md5sum for a message object of type '<GetHMSData-response>"
  "1ec4559c4a22067560534b61ee437470")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetHMSData-response)))
  "Returns md5sum for a message object of type 'GetHMSData-response"
  "1ec4559c4a22067560534b61ee437470")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetHMSData-response>)))
  "Returns full string definition for message of type '<GetHMSData-response>"
  (cl:format cl:nil "#reponse~%bool result~%uint8 deviceIndex         # When the error code is related to camera or gimbal device,~%                          # it will tell you which device it is.~%HMSPushInfo[] errList     # error code list in each pushing~%uint32 timeStamp~%~%================================================================================~%MSG: dji_osdk_ros/HMSPushInfo~%uint32 alarmID     #/*! error code*/~%uint8  sensorIndex #/*! fault sensor's index*/~%uint8  reportLevel #/*! fault level ,0-4,0 is no error,4 is highest*/~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetHMSData-response)))
  "Returns full string definition for message of type 'GetHMSData-response"
  (cl:format cl:nil "#reponse~%bool result~%uint8 deviceIndex         # When the error code is related to camera or gimbal device,~%                          # it will tell you which device it is.~%HMSPushInfo[] errList     # error code list in each pushing~%uint32 timeStamp~%~%================================================================================~%MSG: dji_osdk_ros/HMSPushInfo~%uint32 alarmID     #/*! error code*/~%uint8  sensorIndex #/*! fault sensor's index*/~%uint8  reportLevel #/*! fault level ,0-4,0 is no error,4 is highest*/~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetHMSData-response>))
  (cl:+ 0
     1
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'errList) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetHMSData-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetHMSData-response
    (cl:cons ':result (result msg))
    (cl:cons ':deviceIndex (deviceIndex msg))
    (cl:cons ':errList (errList msg))
    (cl:cons ':timeStamp (timeStamp msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetHMSData)))
  'GetHMSData-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetHMSData)))
  'GetHMSData-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetHMSData)))
  "Returns string type for a service object of type '<GetHMSData>"
  "dji_osdk_ros/GetHMSData")