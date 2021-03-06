# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from dji_osdk_ros/SetJoystickModeRequest.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class SetJoystickModeRequest(genpy.Message):
  _md5sum = "ceb88ab65abad757e3f8c63ab37f9f7d"
  _type = "dji_osdk_ros/SetJoystickModeRequest"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """#request
#contant for horizontal_mode
# Set the control-mode to control pitch & roll angle of the vehicle.
# Need to be referenced to either the ground or body frame 
# by HorizontalCoordinate setting.
# Limit: 35 degree
uint8 HORIZONTAL_ANGLE = 0
# Set the control-mode to control horizontal vehicle velocities.
# Need to be referenced to either the ground or body frame by
# HorizontalCoordinate setting.
# Limit: 30 m/s
uint8 HORIZONTAL_VELOCITY = 1
# Set the control-mode to control position offsets of pitch & roll directions
# Need to be referenced to either the ground r body frame by HorizontalCoordinate setting.
# Limit: N/A
uint8 HORIZONTAL_POSITION = 2
# Set the control-mode to control rate of change of the vehicle's attitude
# Need to be referenced to either the ground or body frame by HorizontalCoordinate setting.
# Limit: 150.0 deg/s
uint8 HORIZONTAL_ANGULAR_RATE = 3

#contant for vertical_mode
# Set the control-mode to control the vertical
# speed of UAV, upward is positive
# Limit: -5 to 5 m/s
uint8 VERTICAL_VELOCITY = 0
# Set the control-mode to control the height of UAV
# Limit: 0 to 120 m
uint8 VERTICAL_POSITION = 1
# Set the control-mode to directly control the thrust
# Range: 0% to 100%
uint8 VERTICAL_THRUST = 2

#contant for yaw_mode
# Set the control-mode to control yaw angle.
# Yaw angle is referenced to the ground frame.
# In this control mode, Ground frame is enforeced in Autopilot.
uint8 YAW_ANGLE = 0
# Set the control-mode to control yaw angular velocity.
# Same reference frame as YAW_ANGLE.
# Limite: 150 deg/s
uint8 YAW_RATE = 1
#contant for horizontal_coordinate
# Set the x-y of ground frame as the horizontal frame (NEU) */
uint8 HORIZONTAL_GROUND = 0
# Set the x-y of body frame as the horizontal frame (FRU) */
uint8 HORIZONTAL_BODY = 1
#contant for stable_mode
# Disable the stable mode
uint8 STABLE_DISABLE = 0
# Enable the stable mode
uint8 STABLE_ENABLE = 1

# Only when the GPS signal is good (health_flag >=3)???horizontal
# position control (HORIZONTAL_POSITION) related control modes can be used.
# Only when GPS signal is good (health_flag >=3)???or when AdvancedSensing
# system is working properly with Autopilot???horizontal velocity control
# ???HORIZONTAL_VELOCITY???related control modes can be used.
uint8 horizontal_mode

# We suggest developers do not use VERTICAL_POSITION control mode indoor
# when your UAV flight height is larger than 3 meters.
# This is because in indoor environments, barometer can be inaccurate, and
# the vertical controller may fail to keep the height of the UAV.
uint8 vertical_mode
uint8 yaw_mode
uint8 horizontal_coordinate

# Only works in Horizontal velocity control mode
# In velocity stable mode, drone will brake and hover at one position once
# the input command is zero.
# Drone will try to stay in position once in hover state.
# In velocity non-stable mode, drone will follow the velocity command and
# doesn???t hover when the command is zero.
# That???s to say drone will drift with the wind.
uint8 stable_mode
"""
  # Pseudo-constants
  HORIZONTAL_ANGLE = 0
  HORIZONTAL_VELOCITY = 1
  HORIZONTAL_POSITION = 2
  HORIZONTAL_ANGULAR_RATE = 3
  VERTICAL_VELOCITY = 0
  VERTICAL_POSITION = 1
  VERTICAL_THRUST = 2
  YAW_ANGLE = 0
  YAW_RATE = 1
  HORIZONTAL_GROUND = 0
  HORIZONTAL_BODY = 1
  STABLE_DISABLE = 0
  STABLE_ENABLE = 1

  __slots__ = ['horizontal_mode','vertical_mode','yaw_mode','horizontal_coordinate','stable_mode']
  _slot_types = ['uint8','uint8','uint8','uint8','uint8']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       horizontal_mode,vertical_mode,yaw_mode,horizontal_coordinate,stable_mode

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(SetJoystickModeRequest, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.horizontal_mode is None:
        self.horizontal_mode = 0
      if self.vertical_mode is None:
        self.vertical_mode = 0
      if self.yaw_mode is None:
        self.yaw_mode = 0
      if self.horizontal_coordinate is None:
        self.horizontal_coordinate = 0
      if self.stable_mode is None:
        self.stable_mode = 0
    else:
      self.horizontal_mode = 0
      self.vertical_mode = 0
      self.yaw_mode = 0
      self.horizontal_coordinate = 0
      self.stable_mode = 0

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_5B().pack(_x.horizontal_mode, _x.vertical_mode, _x.yaw_mode, _x.horizontal_coordinate, _x.stable_mode))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 5
      (_x.horizontal_mode, _x.vertical_mode, _x.yaw_mode, _x.horizontal_coordinate, _x.stable_mode,) = _get_struct_5B().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_5B().pack(_x.horizontal_mode, _x.vertical_mode, _x.yaw_mode, _x.horizontal_coordinate, _x.stable_mode))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 5
      (_x.horizontal_mode, _x.vertical_mode, _x.yaw_mode, _x.horizontal_coordinate, _x.stable_mode,) = _get_struct_5B().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_5B = None
def _get_struct_5B():
    global _struct_5B
    if _struct_5B is None:
        _struct_5B = struct.Struct("<5B")
    return _struct_5B
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from dji_osdk_ros/SetJoystickModeResponse.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class SetJoystickModeResponse(genpy.Message):
  _md5sum = "eb13ac1f1354ccecb7941ee8fa2192e8"
  _type = "dji_osdk_ros/SetJoystickModeResponse"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """#response
bool result
"""
  __slots__ = ['result']
  _slot_types = ['bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       result

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(SetJoystickModeResponse, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.result is None:
        self.result = False
    else:
      self.result = False

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self.result
      buff.write(_get_struct_B().pack(_x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      start = end
      end += 1
      (self.result,) = _get_struct_B().unpack(str[start:end])
      self.result = bool(self.result)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self.result
      buff.write(_get_struct_B().pack(_x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      start = end
      end += 1
      (self.result,) = _get_struct_B().unpack(str[start:end])
      self.result = bool(self.result)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_B = None
def _get_struct_B():
    global _struct_B
    if _struct_B is None:
        _struct_B = struct.Struct("<B")
    return _struct_B
class SetJoystickMode(object):
  _type          = 'dji_osdk_ros/SetJoystickMode'
  _md5sum = 'c55e9c9164f1a634e9bf9721aa4cb437'
  _request_class  = SetJoystickModeRequest
  _response_class = SetJoystickModeResponse
