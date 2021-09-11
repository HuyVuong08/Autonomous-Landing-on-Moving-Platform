; Auto-generated. Do not edit!


(cl:in-package dji_osdk_ros-srv)


;//! \htmlinclude DownloadWaypointV2Mission-request.msg.html

(cl:defclass <DownloadWaypointV2Mission-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass DownloadWaypointV2Mission-request (<DownloadWaypointV2Mission-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DownloadWaypointV2Mission-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DownloadWaypointV2Mission-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-srv:<DownloadWaypointV2Mission-request> is deprecated: use dji_osdk_ros-srv:DownloadWaypointV2Mission-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DownloadWaypointV2Mission-request>) ostream)
  "Serializes a message object of type '<DownloadWaypointV2Mission-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DownloadWaypointV2Mission-request>) istream)
  "Deserializes a message object of type '<DownloadWaypointV2Mission-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DownloadWaypointV2Mission-request>)))
  "Returns string type for a service object of type '<DownloadWaypointV2Mission-request>"
  "dji_osdk_ros/DownloadWaypointV2MissionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DownloadWaypointV2Mission-request)))
  "Returns string type for a service object of type 'DownloadWaypointV2Mission-request"
  "dji_osdk_ros/DownloadWaypointV2MissionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DownloadWaypointV2Mission-request>)))
  "Returns md5sum for a message object of type '<DownloadWaypointV2Mission-request>"
  "4b9a6e8c58bda1e8d747c69006bbc940")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DownloadWaypointV2Mission-request)))
  "Returns md5sum for a message object of type 'DownloadWaypointV2Mission-request"
  "4b9a6e8c58bda1e8d747c69006bbc940")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DownloadWaypointV2Mission-request>)))
  "Returns full string definition for message of type '<DownloadWaypointV2Mission-request>"
  (cl:format cl:nil "#request~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DownloadWaypointV2Mission-request)))
  "Returns full string definition for message of type 'DownloadWaypointV2Mission-request"
  (cl:format cl:nil "#request~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DownloadWaypointV2Mission-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DownloadWaypointV2Mission-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DownloadWaypointV2Mission-request
))
;//! \htmlinclude DownloadWaypointV2Mission-response.msg.html

(cl:defclass <DownloadWaypointV2Mission-response> (roslisp-msg-protocol:ros-message)
  ((mission
    :reader mission
    :initarg :mission
    :type (cl:vector dji_osdk_ros-msg:WaypointV2)
   :initform (cl:make-array 0 :element-type 'dji_osdk_ros-msg:WaypointV2 :initial-element (cl:make-instance 'dji_osdk_ros-msg:WaypointV2)))
   (result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass DownloadWaypointV2Mission-response (<DownloadWaypointV2Mission-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DownloadWaypointV2Mission-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DownloadWaypointV2Mission-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-srv:<DownloadWaypointV2Mission-response> is deprecated: use dji_osdk_ros-srv:DownloadWaypointV2Mission-response instead.")))

(cl:ensure-generic-function 'mission-val :lambda-list '(m))
(cl:defmethod mission-val ((m <DownloadWaypointV2Mission-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:mission-val is deprecated.  Use dji_osdk_ros-srv:mission instead.")
  (mission m))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <DownloadWaypointV2Mission-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:result-val is deprecated.  Use dji_osdk_ros-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DownloadWaypointV2Mission-response>) ostream)
  "Serializes a message object of type '<DownloadWaypointV2Mission-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'mission))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'mission))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DownloadWaypointV2Mission-response>) istream)
  "Deserializes a message object of type '<DownloadWaypointV2Mission-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'mission) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'mission)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'dji_osdk_ros-msg:WaypointV2))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DownloadWaypointV2Mission-response>)))
  "Returns string type for a service object of type '<DownloadWaypointV2Mission-response>"
  "dji_osdk_ros/DownloadWaypointV2MissionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DownloadWaypointV2Mission-response)))
  "Returns string type for a service object of type 'DownloadWaypointV2Mission-response"
  "dji_osdk_ros/DownloadWaypointV2MissionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DownloadWaypointV2Mission-response>)))
  "Returns md5sum for a message object of type '<DownloadWaypointV2Mission-response>"
  "4b9a6e8c58bda1e8d747c69006bbc940")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DownloadWaypointV2Mission-response)))
  "Returns md5sum for a message object of type 'DownloadWaypointV2Mission-response"
  "4b9a6e8c58bda1e8d747c69006bbc940")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DownloadWaypointV2Mission-response>)))
  "Returns full string definition for message of type '<DownloadWaypointV2Mission-response>"
  (cl:format cl:nil "#response~%WaypointV2[] mission~%bool result~%~%================================================================================~%MSG: dji_osdk_ros/WaypointV2~%# The struct represents a target point in the waypoint mission. For a waypoint~%~%#constant for flightpathMode~%uint8 DJIWaypointV2FlightPathModeGoToPointAlongACurve = 0  #In the mission, the aircraft will go to the waypoint along a curve and fly past the waypoint.~%uint8 DJIWaypointV2FlightPathModeGoToPointAlongACurveAndStop = 1 #In the mission, the aircraft will go to the waypoint along a curve and stop at the waypoint.~%uint8 DJIWaypointV2FlightPathModeGoToPointInAStraightLineAndStop = 2  #In the mission, the aircraft will go to the waypoint along a straight line and stop at the waypoint.~%uint8 DJIWaypointV2FlightPathModeCoordinateTurn = 3   #In the mission, the aircraft will fly from the previous waypoint to the next waypoint along a smooth curve without stopping at this waypoint.~%                                                      #the next in a curved motion,  adhering to the ``DJIWaypointV2_dampingDistance``, which is~%                                                      #set in ``DJIWaypointV2``.~%uint8 DJIWaypointV2FlightPathModeGoToFirstPointAlongAStraightLine = 4  # In the mission, the aircraft will go to the first waypoint along a straight line.~%                                                                       # This is only valid for the first waypoint.~%uint8 DJIWaypointV2FlightPathModeStraightOut = 5   # Straight exit the Last waypoint, Only valid for last waypoint.~%uint8 DJIWaypointV2FlightPathModeUnknown = 255    # Unknown~%~%#constant for headMode~%uint8 DJIWaypointV2HeadingModeAuto = 0    # Aircraft's heading will always be in the direction of flight.~%uint8 DJIWaypointV2HeadingFixed    = 1    # Aircraft's heading will be set to the heading when reaching the first waypoint.~%                                          # Before reaching the first waypoint, the aircraft's heading can be controlled by~%                                          # the remote controller. When the aircraft reaches the first waypoint, its~%                                          # heading will be fixed.~%uint8 DJIWaypointV2HeadingManual   = 2    # The aircraft's heading in the mission can be controlled by the remote controller.~%uint8 DJIWaypointV2HeadingWaypointCustom = 3  # In the mission, the aircraft's heading will change dynamically and adapt to the heading set at the next waypoint.~%                                               # See ``DJIWaypointV2_heading`` to preset the heading.~%uint8 DJIWaypointV2HeadingTowardPointOfInterest = 4 # Aircraft's heading will always toward point of interest.~%                                                    # using ``DJIWaypointV2_pointOfInterest`` setting point of interest coordiate and ``DJIWaypointV2_pointOfInterestAltitude``~%                                                    # setting point of interset altitute.~%uint8 DJIWaypointV2HeadingGimbalYawFollow  = 5   # The aircraft's heading rotate simultaneously with its gimbal's yaw.~%uint8 DJIWaypointV2HeadingUnknown = 255         # Unknown.~%~%#constant for turnMode~%uint8 DJIWaypointV2TurnModeClockwise = 0  # The aircraft's heading rotates clockwise.~%uint8 DJIWaypointV2TurnModeCounterClockwise = 1   # The aircraft's heading rotates counterclockwise.~%uint8 DJIWaypointV2TurnModeUnknown = 255    # Changes the heading of the aircraft by rotating the aircraft anti-clockwise.~%~%~%~%#  mission, a flight route  consists of multiple `WaypointV2` objects.~%float64 longitude  # waypoint position relative to WayPointV2InitSettings's reference point.unit: m~%float64 latitude~%float32 relativeHeight  # relative to takeoff height~%uint8   waypointType    # Waypoint flight path mode~%uint8   headingMode     # Represents current aircraft's heading mode on current waypoint.~%WaypointV2Config  config          # Represents current waypoint's speed config.~%uint16  dampingDistance~%float32 heading         # The heading to which the aircraft will rotate by the time it reaches the~%                        # waypoint. The aircraft heading  will gradually change between two waypoints with~%                        # different headings if the waypoint  mission's `headingMode` is set  to~%                        # 'DJIWaypointV2_DJIWaypointV2HeadingMode_WaypointCustom`. A heading has a range of~%                        # [-180, 180] degrees, where 0 represents True North.~%uint8 turnMode          # Determines whether the aircraft will turn clockwise or anticlockwise when~%                        # changing its heading.~%# Property is used when ``DJIWaypointV2_headingMode`` is~%# ``DJIWaypointV2_DJIWaypointV2HeadingMode_TowardPointOfInterest``.~%# Aircraft will always be heading to point while executing mission. Default is~%# \"kCLLocationCoordinate2DInvalid\".~%float32 positionX       # X distance to reference point, North is positive~%float32 positionY       # Y distance to reference point, East is positive~%float32 positionZ       # Z distance to reference point, UP is positive~%~%# While the aircraft is travelling between waypoints, you can offset its speed by~%# using the throttle joystick on the remote controller. \"maxFlightSpeed\" is this~%# offset when the joystick is pushed to maximum deflection. For example, If~%# maxFlightSpeed is 10 m/s, then pushing the throttle joystick all the way up will~%# add 10 m/s to the aircraft speed, while pushing down will subtract 10 m/s from~%# the aircraft speed. If the remote controller stick is not at maximum deflection,~%# then the offset speed will be interpolated between \"[0, maxFlightSpeed]\"\" with a~%# resolution of 1000 steps. If the offset speed is negative, then the aircraft~%# will fly backwards to previous waypoints. When it reaches the first waypoint, it~%# will then hover in place until a positive speed is applied. \"maxFlightSpeed\" has~%# a range of [2,15] m/s.~%float32 maxFlightSpeed~%~%# The base automatic speed of the aircraft as it moves between waypoints with~%# range [-15, 15] m/s. The aircraft's actual speed is a combination of the base~%# automatic speed, and the speed control given by the throttle joystick on the~%# remote controller. If \"autoFlightSpeed >0\": Actual speed is \"autoFlightSpeed\" +~%# Joystick Speed (with combined max of \"maxFlightSpeed\") If \"autoFlightSpeed =0\":~%# Actual speed is controlled only by the remote controller joystick. If~%# autoFlightSpeed <0\" and the aircraft is at the first waypoint, the aircraft~%# will hover in place until the speed is made positive by the remote controller~%# joystick. In flight controller firmware 3.2.10.0 or above, different speeds~%# between individual waypoints can also be set in waypoint objects which will~%# overwrite \"autoFlightSpeed\".~%float32 autoFlightSpeed~%================================================================================~%MSG: dji_osdk_ros/WaypointV2Config~%# Represents current waypoint's speed config.~%# 0: set local waypoint's cruise speed,~%# 1: unset global waypoint's cruise speed*/~%uint8  useLocalCruiseVel~%# 0: set local waypoint's max speed,~%# 1: unset global waypoint's max speed*/~%uint8  useLocalMaxVel~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DownloadWaypointV2Mission-response)))
  "Returns full string definition for message of type 'DownloadWaypointV2Mission-response"
  (cl:format cl:nil "#response~%WaypointV2[] mission~%bool result~%~%================================================================================~%MSG: dji_osdk_ros/WaypointV2~%# The struct represents a target point in the waypoint mission. For a waypoint~%~%#constant for flightpathMode~%uint8 DJIWaypointV2FlightPathModeGoToPointAlongACurve = 0  #In the mission, the aircraft will go to the waypoint along a curve and fly past the waypoint.~%uint8 DJIWaypointV2FlightPathModeGoToPointAlongACurveAndStop = 1 #In the mission, the aircraft will go to the waypoint along a curve and stop at the waypoint.~%uint8 DJIWaypointV2FlightPathModeGoToPointInAStraightLineAndStop = 2  #In the mission, the aircraft will go to the waypoint along a straight line and stop at the waypoint.~%uint8 DJIWaypointV2FlightPathModeCoordinateTurn = 3   #In the mission, the aircraft will fly from the previous waypoint to the next waypoint along a smooth curve without stopping at this waypoint.~%                                                      #the next in a curved motion,  adhering to the ``DJIWaypointV2_dampingDistance``, which is~%                                                      #set in ``DJIWaypointV2``.~%uint8 DJIWaypointV2FlightPathModeGoToFirstPointAlongAStraightLine = 4  # In the mission, the aircraft will go to the first waypoint along a straight line.~%                                                                       # This is only valid for the first waypoint.~%uint8 DJIWaypointV2FlightPathModeStraightOut = 5   # Straight exit the Last waypoint, Only valid for last waypoint.~%uint8 DJIWaypointV2FlightPathModeUnknown = 255    # Unknown~%~%#constant for headMode~%uint8 DJIWaypointV2HeadingModeAuto = 0    # Aircraft's heading will always be in the direction of flight.~%uint8 DJIWaypointV2HeadingFixed    = 1    # Aircraft's heading will be set to the heading when reaching the first waypoint.~%                                          # Before reaching the first waypoint, the aircraft's heading can be controlled by~%                                          # the remote controller. When the aircraft reaches the first waypoint, its~%                                          # heading will be fixed.~%uint8 DJIWaypointV2HeadingManual   = 2    # The aircraft's heading in the mission can be controlled by the remote controller.~%uint8 DJIWaypointV2HeadingWaypointCustom = 3  # In the mission, the aircraft's heading will change dynamically and adapt to the heading set at the next waypoint.~%                                               # See ``DJIWaypointV2_heading`` to preset the heading.~%uint8 DJIWaypointV2HeadingTowardPointOfInterest = 4 # Aircraft's heading will always toward point of interest.~%                                                    # using ``DJIWaypointV2_pointOfInterest`` setting point of interest coordiate and ``DJIWaypointV2_pointOfInterestAltitude``~%                                                    # setting point of interset altitute.~%uint8 DJIWaypointV2HeadingGimbalYawFollow  = 5   # The aircraft's heading rotate simultaneously with its gimbal's yaw.~%uint8 DJIWaypointV2HeadingUnknown = 255         # Unknown.~%~%#constant for turnMode~%uint8 DJIWaypointV2TurnModeClockwise = 0  # The aircraft's heading rotates clockwise.~%uint8 DJIWaypointV2TurnModeCounterClockwise = 1   # The aircraft's heading rotates counterclockwise.~%uint8 DJIWaypointV2TurnModeUnknown = 255    # Changes the heading of the aircraft by rotating the aircraft anti-clockwise.~%~%~%~%#  mission, a flight route  consists of multiple `WaypointV2` objects.~%float64 longitude  # waypoint position relative to WayPointV2InitSettings's reference point.unit: m~%float64 latitude~%float32 relativeHeight  # relative to takeoff height~%uint8   waypointType    # Waypoint flight path mode~%uint8   headingMode     # Represents current aircraft's heading mode on current waypoint.~%WaypointV2Config  config          # Represents current waypoint's speed config.~%uint16  dampingDistance~%float32 heading         # The heading to which the aircraft will rotate by the time it reaches the~%                        # waypoint. The aircraft heading  will gradually change between two waypoints with~%                        # different headings if the waypoint  mission's `headingMode` is set  to~%                        # 'DJIWaypointV2_DJIWaypointV2HeadingMode_WaypointCustom`. A heading has a range of~%                        # [-180, 180] degrees, where 0 represents True North.~%uint8 turnMode          # Determines whether the aircraft will turn clockwise or anticlockwise when~%                        # changing its heading.~%# Property is used when ``DJIWaypointV2_headingMode`` is~%# ``DJIWaypointV2_DJIWaypointV2HeadingMode_TowardPointOfInterest``.~%# Aircraft will always be heading to point while executing mission. Default is~%# \"kCLLocationCoordinate2DInvalid\".~%float32 positionX       # X distance to reference point, North is positive~%float32 positionY       # Y distance to reference point, East is positive~%float32 positionZ       # Z distance to reference point, UP is positive~%~%# While the aircraft is travelling between waypoints, you can offset its speed by~%# using the throttle joystick on the remote controller. \"maxFlightSpeed\" is this~%# offset when the joystick is pushed to maximum deflection. For example, If~%# maxFlightSpeed is 10 m/s, then pushing the throttle joystick all the way up will~%# add 10 m/s to the aircraft speed, while pushing down will subtract 10 m/s from~%# the aircraft speed. If the remote controller stick is not at maximum deflection,~%# then the offset speed will be interpolated between \"[0, maxFlightSpeed]\"\" with a~%# resolution of 1000 steps. If the offset speed is negative, then the aircraft~%# will fly backwards to previous waypoints. When it reaches the first waypoint, it~%# will then hover in place until a positive speed is applied. \"maxFlightSpeed\" has~%# a range of [2,15] m/s.~%float32 maxFlightSpeed~%~%# The base automatic speed of the aircraft as it moves between waypoints with~%# range [-15, 15] m/s. The aircraft's actual speed is a combination of the base~%# automatic speed, and the speed control given by the throttle joystick on the~%# remote controller. If \"autoFlightSpeed >0\": Actual speed is \"autoFlightSpeed\" +~%# Joystick Speed (with combined max of \"maxFlightSpeed\") If \"autoFlightSpeed =0\":~%# Actual speed is controlled only by the remote controller joystick. If~%# autoFlightSpeed <0\" and the aircraft is at the first waypoint, the aircraft~%# will hover in place until the speed is made positive by the remote controller~%# joystick. In flight controller firmware 3.2.10.0 or above, different speeds~%# between individual waypoints can also be set in waypoint objects which will~%# overwrite \"autoFlightSpeed\".~%float32 autoFlightSpeed~%================================================================================~%MSG: dji_osdk_ros/WaypointV2Config~%# Represents current waypoint's speed config.~%# 0: set local waypoint's cruise speed,~%# 1: unset global waypoint's cruise speed*/~%uint8  useLocalCruiseVel~%# 0: set local waypoint's max speed,~%# 1: unset global waypoint's max speed*/~%uint8  useLocalMaxVel~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DownloadWaypointV2Mission-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'mission) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DownloadWaypointV2Mission-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DownloadWaypointV2Mission-response
    (cl:cons ':mission (mission msg))
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DownloadWaypointV2Mission)))
  'DownloadWaypointV2Mission-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DownloadWaypointV2Mission)))
  'DownloadWaypointV2Mission-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DownloadWaypointV2Mission)))
  "Returns string type for a service object of type '<DownloadWaypointV2Mission>"
  "dji_osdk_ros/DownloadWaypointV2Mission")