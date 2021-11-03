; Auto-generated. Do not edit!


(cl:in-package sumit_xl_tools-srv)


;//! \htmlinclude SumitXLPose-request.msg.html

(cl:defclass <SumitXLPose-request> (roslisp-msg-protocol:ros-message)
  ((label
    :reader label
    :initarg :label
    :type cl:string
    :initform ""))
)

(cl:defclass SumitXLPose-request (<SumitXLPose-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SumitXLPose-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SumitXLPose-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sumit_xl_tools-srv:<SumitXLPose-request> is deprecated: use sumit_xl_tools-srv:SumitXLPose-request instead.")))

(cl:ensure-generic-function 'label-val :lambda-list '(m))
(cl:defmethod label-val ((m <SumitXLPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sumit_xl_tools-srv:label-val is deprecated.  Use sumit_xl_tools-srv:label instead.")
  (label m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SumitXLPose-request>) ostream)
  "Serializes a message object of type '<SumitXLPose-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'label))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'label))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SumitXLPose-request>) istream)
  "Deserializes a message object of type '<SumitXLPose-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'label) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'label) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SumitXLPose-request>)))
  "Returns string type for a service object of type '<SumitXLPose-request>"
  "sumit_xl_tools/SumitXLPoseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SumitXLPose-request)))
  "Returns string type for a service object of type 'SumitXLPose-request"
  "sumit_xl_tools/SumitXLPoseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SumitXLPose-request>)))
  "Returns md5sum for a message object of type '<SumitXLPose-request>"
  "920ca5ca095e1b5230fc32da338a974c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SumitXLPose-request)))
  "Returns md5sum for a message object of type 'SumitXLPose-request"
  "920ca5ca095e1b5230fc32da338a974c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SumitXLPose-request>)))
  "Returns full string definition for message of type '<SumitXLPose-request>"
  (cl:format cl:nil "~%string label~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SumitXLPose-request)))
  "Returns full string definition for message of type 'SumitXLPose-request"
  (cl:format cl:nil "~%string label~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SumitXLPose-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'label))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SumitXLPose-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SumitXLPose-request
    (cl:cons ':label (label msg))
))
;//! \htmlinclude SumitXLPose-response.msg.html

(cl:defclass <SumitXLPose-response> (roslisp-msg-protocol:ros-message)
  ((navigation_successfull
    :reader navigation_successfull
    :initarg :navigation_successfull
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass SumitXLPose-response (<SumitXLPose-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SumitXLPose-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SumitXLPose-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sumit_xl_tools-srv:<SumitXLPose-response> is deprecated: use sumit_xl_tools-srv:SumitXLPose-response instead.")))

(cl:ensure-generic-function 'navigation_successfull-val :lambda-list '(m))
(cl:defmethod navigation_successfull-val ((m <SumitXLPose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sumit_xl_tools-srv:navigation_successfull-val is deprecated.  Use sumit_xl_tools-srv:navigation_successfull instead.")
  (navigation_successfull m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SumitXLPose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sumit_xl_tools-srv:message-val is deprecated.  Use sumit_xl_tools-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SumitXLPose-response>) ostream)
  "Serializes a message object of type '<SumitXLPose-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'navigation_successfull) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SumitXLPose-response>) istream)
  "Deserializes a message object of type '<SumitXLPose-response>"
    (cl:setf (cl:slot-value msg 'navigation_successfull) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SumitXLPose-response>)))
  "Returns string type for a service object of type '<SumitXLPose-response>"
  "sumit_xl_tools/SumitXLPoseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SumitXLPose-response)))
  "Returns string type for a service object of type 'SumitXLPose-response"
  "sumit_xl_tools/SumitXLPoseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SumitXLPose-response>)))
  "Returns md5sum for a message object of type '<SumitXLPose-response>"
  "920ca5ca095e1b5230fc32da338a974c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SumitXLPose-response)))
  "Returns md5sum for a message object of type 'SumitXLPose-response"
  "920ca5ca095e1b5230fc32da338a974c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SumitXLPose-response>)))
  "Returns full string definition for message of type '<SumitXLPose-response>"
  (cl:format cl:nil "~%bool navigation_successfull~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SumitXLPose-response)))
  "Returns full string definition for message of type 'SumitXLPose-response"
  (cl:format cl:nil "~%bool navigation_successfull~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SumitXLPose-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SumitXLPose-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SumitXLPose-response
    (cl:cons ':navigation_successfull (navigation_successfull msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SumitXLPose)))
  'SumitXLPose-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SumitXLPose)))
  'SumitXLPose-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SumitXLPose)))
  "Returns string type for a service object of type '<SumitXLPose>"
  "sumit_xl_tools/SumitXLPose")