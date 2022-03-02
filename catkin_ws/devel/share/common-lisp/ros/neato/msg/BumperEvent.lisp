; Auto-generated. Do not edit!


(cl:in-package neato-msg)


;//! \htmlinclude BumperEvent.msg.html

(cl:defclass <BumperEvent> (roslisp-msg-protocol:ros-message)
  ((bumper
    :reader bumper
    :initarg :bumper
    :type cl:fixnum
    :initform 0)
   (engaged
    :reader engaged
    :initarg :engaged
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass BumperEvent (<BumperEvent>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BumperEvent>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BumperEvent)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name neato-msg:<BumperEvent> is deprecated: use neato-msg:BumperEvent instead.")))

(cl:ensure-generic-function 'bumper-val :lambda-list '(m))
(cl:defmethod bumper-val ((m <BumperEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader neato-msg:bumper-val is deprecated.  Use neato-msg:bumper instead.")
  (bumper m))

(cl:ensure-generic-function 'engaged-val :lambda-list '(m))
(cl:defmethod engaged-val ((m <BumperEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader neato-msg:engaged-val is deprecated.  Use neato-msg:engaged instead.")
  (engaged m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<BumperEvent>)))
    "Constants for message type '<BumperEvent>"
  '((:LEFT_SIDE . 0)
    (:LEFT_FRONT . 1)
    (:RIGHT_FRONT . 2)
    (:RIGHT_SIDE . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'BumperEvent)))
    "Constants for message type 'BumperEvent"
  '((:LEFT_SIDE . 0)
    (:LEFT_FRONT . 1)
    (:RIGHT_FRONT . 2)
    (:RIGHT_SIDE . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BumperEvent>) ostream)
  "Serializes a message object of type '<BumperEvent>"
  (cl:let* ((signed (cl:slot-value msg 'bumper)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'engaged) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BumperEvent>) istream)
  "Deserializes a message object of type '<BumperEvent>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'bumper) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:slot-value msg 'engaged) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BumperEvent>)))
  "Returns string type for a message object of type '<BumperEvent>"
  "neato/BumperEvent")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BumperEvent)))
  "Returns string type for a message object of type 'BumperEvent"
  "neato/BumperEvent")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BumperEvent>)))
  "Returns md5sum for a message object of type '<BumperEvent>"
  "5ebd9e65af101af002d83ad099e3c4da")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BumperEvent)))
  "Returns md5sum for a message object of type 'BumperEvent"
  "5ebd9e65af101af002d83ad099e3c4da")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BumperEvent>)))
  "Returns full string definition for message of type '<BumperEvent>"
  (cl:format cl:nil "# Bumper Values ~%int8 LEFT_SIDE = 0          # Left front side bumper switch~%int8 LEFT_FRONT = 1         # Left front bumper switch~%int8 RIGHT_FRONT = 2        # Right front bumper switch~%int8 RIGHT_SIDE = 3         # Right front side bumper switch~%~%int8    bumper              # values defined above~%bool    engaged             # whether or not the bumper is engaged (detecting something) or not~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BumperEvent)))
  "Returns full string definition for message of type 'BumperEvent"
  (cl:format cl:nil "# Bumper Values ~%int8 LEFT_SIDE = 0          # Left front side bumper switch~%int8 LEFT_FRONT = 1         # Left front bumper switch~%int8 RIGHT_FRONT = 2        # Right front bumper switch~%int8 RIGHT_SIDE = 3         # Right front side bumper switch~%~%int8    bumper              # values defined above~%bool    engaged             # whether or not the bumper is engaged (detecting something) or not~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BumperEvent>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BumperEvent>))
  "Converts a ROS message object to a list"
  (cl:list 'BumperEvent
    (cl:cons ':bumper (bumper msg))
    (cl:cons ':engaged (engaged msg))
))
