# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from dji_osdk_ros/SmartBatteryDynamicInfo.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import dji_osdk_ros.msg

class SmartBatteryDynamicInfo(genpy.Message):
  _md5sum = "cdcd4be856eb19722059d659610eb844"
  _type = "dji_osdk_ros/SmartBatteryDynamicInfo"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """uint8  batteryIndex
int32  currentVoltage          # uint:mV
int32  currentElectric         # uint:mA
uint32 fullCapacity            # uint:mAh
uint32 remainedCapacity        # uint:mAh
int16  batteryTemperature      # uint:0.1℃
uint8  cellCount
uint8  batteryCapacityPercent  # uint:%
SmartBatteryState batteryState
uint8  SOP                     # Relative power percentage
================================================================================
MSG: dji_osdk_ros/SmartBatteryState
uint8 cellBreak                  # 0:normal;other:Undervoltage core index(0x01-0x1F)
uint8 selfCheckError             # enum-type: DJISmartBatterySelfCheck
uint8 batteryClosedReason        # enum-type: DJI_BETTERY_CLOSED_REASON
uint8 batSOHState                # enum-type: DJISmartBatterySohState*/
uint8 maxCycleLimit              # APP:cycle_limit*10*/
uint8 batteryCommunicationAbnormal
uint8 hasCellBreak
uint8 heatState                  # enum-type: DJISmartBatteryHeatState"""
  __slots__ = ['batteryIndex','currentVoltage','currentElectric','fullCapacity','remainedCapacity','batteryTemperature','cellCount','batteryCapacityPercent','batteryState','SOP']
  _slot_types = ['uint8','int32','int32','uint32','uint32','int16','uint8','uint8','dji_osdk_ros/SmartBatteryState','uint8']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       batteryIndex,currentVoltage,currentElectric,fullCapacity,remainedCapacity,batteryTemperature,cellCount,batteryCapacityPercent,batteryState,SOP

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(SmartBatteryDynamicInfo, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.batteryIndex is None:
        self.batteryIndex = 0
      if self.currentVoltage is None:
        self.currentVoltage = 0
      if self.currentElectric is None:
        self.currentElectric = 0
      if self.fullCapacity is None:
        self.fullCapacity = 0
      if self.remainedCapacity is None:
        self.remainedCapacity = 0
      if self.batteryTemperature is None:
        self.batteryTemperature = 0
      if self.cellCount is None:
        self.cellCount = 0
      if self.batteryCapacityPercent is None:
        self.batteryCapacityPercent = 0
      if self.batteryState is None:
        self.batteryState = dji_osdk_ros.msg.SmartBatteryState()
      if self.SOP is None:
        self.SOP = 0
    else:
      self.batteryIndex = 0
      self.currentVoltage = 0
      self.currentElectric = 0
      self.fullCapacity = 0
      self.remainedCapacity = 0
      self.batteryTemperature = 0
      self.cellCount = 0
      self.batteryCapacityPercent = 0
      self.batteryState = dji_osdk_ros.msg.SmartBatteryState()
      self.SOP = 0

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
      buff.write(_get_struct_B2i2Ih11B().pack(_x.batteryIndex, _x.currentVoltage, _x.currentElectric, _x.fullCapacity, _x.remainedCapacity, _x.batteryTemperature, _x.cellCount, _x.batteryCapacityPercent, _x.batteryState.cellBreak, _x.batteryState.selfCheckError, _x.batteryState.batteryClosedReason, _x.batteryState.batSOHState, _x.batteryState.maxCycleLimit, _x.batteryState.batteryCommunicationAbnormal, _x.batteryState.hasCellBreak, _x.batteryState.heatState, _x.SOP))
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
      if self.batteryState is None:
        self.batteryState = dji_osdk_ros.msg.SmartBatteryState()
      end = 0
      _x = self
      start = end
      end += 30
      (_x.batteryIndex, _x.currentVoltage, _x.currentElectric, _x.fullCapacity, _x.remainedCapacity, _x.batteryTemperature, _x.cellCount, _x.batteryCapacityPercent, _x.batteryState.cellBreak, _x.batteryState.selfCheckError, _x.batteryState.batteryClosedReason, _x.batteryState.batSOHState, _x.batteryState.maxCycleLimit, _x.batteryState.batteryCommunicationAbnormal, _x.batteryState.hasCellBreak, _x.batteryState.heatState, _x.SOP,) = _get_struct_B2i2Ih11B().unpack(str[start:end])
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
      buff.write(_get_struct_B2i2Ih11B().pack(_x.batteryIndex, _x.currentVoltage, _x.currentElectric, _x.fullCapacity, _x.remainedCapacity, _x.batteryTemperature, _x.cellCount, _x.batteryCapacityPercent, _x.batteryState.cellBreak, _x.batteryState.selfCheckError, _x.batteryState.batteryClosedReason, _x.batteryState.batSOHState, _x.batteryState.maxCycleLimit, _x.batteryState.batteryCommunicationAbnormal, _x.batteryState.hasCellBreak, _x.batteryState.heatState, _x.SOP))
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
      if self.batteryState is None:
        self.batteryState = dji_osdk_ros.msg.SmartBatteryState()
      end = 0
      _x = self
      start = end
      end += 30
      (_x.batteryIndex, _x.currentVoltage, _x.currentElectric, _x.fullCapacity, _x.remainedCapacity, _x.batteryTemperature, _x.cellCount, _x.batteryCapacityPercent, _x.batteryState.cellBreak, _x.batteryState.selfCheckError, _x.batteryState.batteryClosedReason, _x.batteryState.batSOHState, _x.batteryState.maxCycleLimit, _x.batteryState.batteryCommunicationAbnormal, _x.batteryState.hasCellBreak, _x.batteryState.heatState, _x.SOP,) = _get_struct_B2i2Ih11B().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_B2i2Ih11B = None
def _get_struct_B2i2Ih11B():
    global _struct_B2i2Ih11B
    if _struct_B2i2Ih11B is None:
        _struct_B2i2Ih11B = struct.Struct("<B2i2Ih11B")
    return _struct_B2i2Ih11B
