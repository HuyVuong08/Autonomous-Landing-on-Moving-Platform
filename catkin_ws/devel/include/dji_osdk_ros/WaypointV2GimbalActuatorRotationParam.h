// Generated by gencpp from file dji_osdk_ros/WaypointV2GimbalActuatorRotationParam.msg
// DO NOT EDIT!


#ifndef DJI_OSDK_ROS_MESSAGE_WAYPOINTV2GIMBALACTUATORROTATIONPARAM_H
#define DJI_OSDK_ROS_MESSAGE_WAYPOINTV2GIMBALACTUATORROTATIONPARAM_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace dji_osdk_ros
{
template <class ContainerAllocator>
struct WaypointV2GimbalActuatorRotationParam_
{
  typedef WaypointV2GimbalActuatorRotationParam_<ContainerAllocator> Type;

  WaypointV2GimbalActuatorRotationParam_()
    : x(0)
    , y(0)
    , z(0)
    , ctrl_mode(0)
    , rollCmdIgnore(0)
    , pitchCmdIgnore(0)
    , yawCmdIgnore(0)
    , absYawModeRef(0)
    , duationTime(0)  {
    }
  WaypointV2GimbalActuatorRotationParam_(const ContainerAllocator& _alloc)
    : x(0)
    , y(0)
    , z(0)
    , ctrl_mode(0)
    , rollCmdIgnore(0)
    , pitchCmdIgnore(0)
    , yawCmdIgnore(0)
    , absYawModeRef(0)
    , duationTime(0)  {
  (void)_alloc;
    }



   typedef int16_t _x_type;
  _x_type x;

   typedef int16_t _y_type;
  _y_type y;

   typedef int16_t _z_type;
  _z_type z;

   typedef uint8_t _ctrl_mode_type;
  _ctrl_mode_type ctrl_mode;

   typedef uint8_t _rollCmdIgnore_type;
  _rollCmdIgnore_type rollCmdIgnore;

   typedef uint8_t _pitchCmdIgnore_type;
  _pitchCmdIgnore_type pitchCmdIgnore;

   typedef uint8_t _yawCmdIgnore_type;
  _yawCmdIgnore_type yawCmdIgnore;

   typedef uint8_t _absYawModeRef_type;
  _absYawModeRef_type absYawModeRef;

   typedef uint8_t _duationTime_type;
  _duationTime_type duationTime;





  typedef boost::shared_ptr< ::dji_osdk_ros::WaypointV2GimbalActuatorRotationParam_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dji_osdk_ros::WaypointV2GimbalActuatorRotationParam_<ContainerAllocator> const> ConstPtr;

}; // struct WaypointV2GimbalActuatorRotationParam_

typedef ::dji_osdk_ros::WaypointV2GimbalActuatorRotationParam_<std::allocator<void> > WaypointV2GimbalActuatorRotationParam;

typedef boost::shared_ptr< ::dji_osdk_ros::WaypointV2GimbalActuatorRotationParam > WaypointV2GimbalActuatorRotationParamPtr;
typedef boost::shared_ptr< ::dji_osdk_ros::WaypointV2GimbalActuatorRotationParam const> WaypointV2GimbalActuatorRotationParamConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dji_osdk_ros::WaypointV2GimbalActuatorRotationParam_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dji_osdk_ros::WaypointV2GimbalActuatorRotationParam_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::dji_osdk_ros::WaypointV2GimbalActuatorRotationParam_<ContainerAllocator1> & lhs, const ::dji_osdk_ros::WaypointV2GimbalActuatorRotationParam_<ContainerAllocator2> & rhs)
{
  return lhs.x == rhs.x &&
    lhs.y == rhs.y &&
    lhs.z == rhs.z &&
    lhs.ctrl_mode == rhs.ctrl_mode &&
    lhs.rollCmdIgnore == rhs.rollCmdIgnore &&
    lhs.pitchCmdIgnore == rhs.pitchCmdIgnore &&
    lhs.yawCmdIgnore == rhs.yawCmdIgnore &&
    lhs.absYawModeRef == rhs.absYawModeRef &&
    lhs.duationTime == rhs.duationTime;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::dji_osdk_ros::WaypointV2GimbalActuatorRotationParam_<ContainerAllocator1> & lhs, const ::dji_osdk_ros::WaypointV2GimbalActuatorRotationParam_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace dji_osdk_ros

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::dji_osdk_ros::WaypointV2GimbalActuatorRotationParam_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dji_osdk_ros::WaypointV2GimbalActuatorRotationParam_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dji_osdk_ros::WaypointV2GimbalActuatorRotationParam_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dji_osdk_ros::WaypointV2GimbalActuatorRotationParam_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dji_osdk_ros::WaypointV2GimbalActuatorRotationParam_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dji_osdk_ros::WaypointV2GimbalActuatorRotationParam_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dji_osdk_ros::WaypointV2GimbalActuatorRotationParam_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d6369db5b1897817b8aad8457ecdbd81";
  }

  static const char* value(const ::dji_osdk_ros::WaypointV2GimbalActuatorRotationParam_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd6369db5b1897817ULL;
  static const uint64_t static_value2 = 0xb8aad8457ecdbd81ULL;
};

template<class ContainerAllocator>
struct DataType< ::dji_osdk_ros::WaypointV2GimbalActuatorRotationParam_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dji_osdk_ros/WaypointV2GimbalActuatorRotationParam";
  }

  static const char* value(const ::dji_osdk_ros::WaypointV2GimbalActuatorRotationParam_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dji_osdk_ros::WaypointV2GimbalActuatorRotationParam_<ContainerAllocator> >
{
  static const char* value()
  {
    return "  int16 x             # gimbal roll angle,  unit: 0.1 deg,range:[-3600, 3600]*/\n"
"  int16 y             # gimbal pitch angle, unit: 0.1 deg,range:[-3600, 3600]*/\n"
"  int16 z             # gimbal yaw angle,   unit: 0.1 deg,range:[-3600, 3600]*/\n"
"  uint8 ctrl_mode     # 0: absolute position control, 1:relative position control*/\n"
"  uint8 rollCmdIgnore # 0: roll command normal,  1: roll command ignore*/\n"
"  uint8 pitchCmdIgnore# 0: pitch command normal,  1: pitch command ignore*/\n"
"  uint8 yawCmdIgnore  # 0: yaw command normal,  1: yaw command ignore*/\n"
"  uint8 absYawModeRef # 0: absoluate rotate yaw relative to aircraft,\n"
"                      #  1: absoluate rotate yaw relative to North*/\n"
"  uint8 duationTime    # 0: rotate time,unit:0.1s, range[1,255]*/\n"
;
  }

  static const char* value(const ::dji_osdk_ros::WaypointV2GimbalActuatorRotationParam_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dji_osdk_ros::WaypointV2GimbalActuatorRotationParam_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.z);
      stream.next(m.ctrl_mode);
      stream.next(m.rollCmdIgnore);
      stream.next(m.pitchCmdIgnore);
      stream.next(m.yawCmdIgnore);
      stream.next(m.absYawModeRef);
      stream.next(m.duationTime);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct WaypointV2GimbalActuatorRotationParam_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dji_osdk_ros::WaypointV2GimbalActuatorRotationParam_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dji_osdk_ros::WaypointV2GimbalActuatorRotationParam_<ContainerAllocator>& v)
  {
    s << indent << "x: ";
    Printer<int16_t>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<int16_t>::stream(s, indent + "  ", v.y);
    s << indent << "z: ";
    Printer<int16_t>::stream(s, indent + "  ", v.z);
    s << indent << "ctrl_mode: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.ctrl_mode);
    s << indent << "rollCmdIgnore: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.rollCmdIgnore);
    s << indent << "pitchCmdIgnore: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.pitchCmdIgnore);
    s << indent << "yawCmdIgnore: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.yawCmdIgnore);
    s << indent << "absYawModeRef: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.absYawModeRef);
    s << indent << "duationTime: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.duationTime);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DJI_OSDK_ROS_MESSAGE_WAYPOINTV2GIMBALACTUATORROTATIONPARAM_H
