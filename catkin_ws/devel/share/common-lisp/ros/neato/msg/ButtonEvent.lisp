; Auto-generated. Do not edit!


(cl:in-package neato-msg)


;//! \htmlinclude ButtonEvent.msg.html

(cl:defclass <ButtonEvent> (roslisp-msg-protocol:ros-message)
  ((button
    :reader button
    :initarg :button
    :type cl:fixnum
    :initform 0)
   (engaged
    :reader engaged
    :initarg :engaged
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ButtonEvent (<ButtonEvent>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ButtonEvent>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ButtonEvent)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name neato-msg:<ButtonEvent> is deprecated: use neato-msg:ButtonEvent instead.")))

(cl:ensure-generic-function 'button-val :lambda-list '(m))
(cl:defmethod button-val ((m <ButtonEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader neato-msg:button-val is deprecated.  Use neato-msg:button instead.")
  (button m))

(cl:ensure-generic-function 'engaged-val :lambda-list '(m))
(cl:defmethod engaged-val ((m <ButtonEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader neato-msg:engaged-val is deprecated.  Use neato-msg:engaged instead.")
  (engaged m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ButtonEvent>)))
    "Constants for message type '<ButtonEvent>"
  '((:START_BUTTON . 0)
    (:SOFT_BUTTON . 1)
    (:BACK_BUTTON . 2)
    (:DOWN_BUTTON . 3)
    (:UP_BUTTON . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ButtonEvent)))
    "Constants for message type 'ButtonEvent"
  '((:START_BUTTON . 0)
    (:SOFT_BUTTON . 1)
    (:BACK_BUTTON . 2)
    (:DOWN_BUTTON . 3)
    (:UP_BUTTON . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ButtonEvent>) ostream)
  "Serializes a message object of type '<ButtonEvent>"
  (cl:let* ((signed (cl:slot-value msg 'button)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'engaged) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ButtonEvent>) istream)
  "Deserializes a message object of type '<ButtonEvent>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'button) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:slot-value msg 'engaged) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ButtonEvent>)))
  "Returns string type for a message object of type '<ButtonEvent>"
  "neato/ButtonEvent")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ButtonEvent)))
  "Returns string type for a message object of type 'ButtonEvent"
  "neato/ButtonEvent")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ButtonEvent>)))
  "Returns md5sum for a message object of type '<ButtonEvent>"
  "c591d569eb4b1b2f2f2100469f94eec5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ButtonEvent)))
  "Returns md5sum for a message object of type 'ButtonEvent"
  "c591d569eb4b1b2f2f2100469f94eec5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ButtonEvent>)))
  "Returns full string definition for message of type '<ButtonEvent>"
  (cl:format cl:nil "# Button Values~%int8 START_BUTTON = 0   # Start button~%int8 SOFT_BUTTON = 1    # Soft button~%int8 BACK_BUTTON = 2    # Back button~%int8 DOWN_BUTTON = 3    # Down button~%int8 UP_BUTTON = 4      # Up button~%~%int8    button          # expected values above~%bool    engaged         # whether or not the button is down~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ButtonEvent)))
  "Returns full string definition for message of type 'ButtonEvent"
  (cl:format cl:nil "# Button Values~%int8 START_BUTTON = 0   # Start button~%int8 SOFT_BUTTON = 1    # Soft button~%int8 BACK_BUTTON = 2    # Back button~%int8 DOWN_BUTTON = 3    # Down button~%int8 UP_BUTTON = 4      # Up button~%~%int8    button          # expected values above~%bool    engaged         # whether or not the button is down~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ButtonEvent>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ButtonEvent>))
  "Converts a ROS message object to a list"
  (cl:list 'ButtonEvent
    (cl:cons ':button (button msg))
    (cl:cons ':engaged (engaged msg))
))
