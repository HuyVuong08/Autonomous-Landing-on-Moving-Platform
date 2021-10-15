// Generated by gencpp from file dji_osdk_ros/FlightTaskControlRequest.msg
// DO NOT EDIT!


#ifndef DJI_OSDK_ROS_MESSAGE_FLIGHTTASKCONTROLREQUEST_H
#define DJI_OSDK_ROS_MESSAGE_FLIGHTTASKCONTROLREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <dji_osdk_ros/JoystickParams.h>

namespace dji_osdk_ros
{
template <class ContainerAllocator>
struct FlightTaskControlRequest_
{
  typedef FlightTaskControlRequest_<ContainerAllocator> Type;

  FlightTaskControlRequest_()
    : task(0)
    , joystickCommand()
    , velocityControlTimeMs(0)
    , posThresholdInM(0.0)
    , yawThresholdInDeg(0.0)  {
    }
  FlightTaskControlRequest_(const ContainerAllocator& _alloc)
    : task(0)
    , joystickCommand(_alloc)
    , velocityControlTimeMs(0)
    , posThresholdInM(0.0)
    , yawThresholdInDeg(0.0)  {
  (void)_alloc;
    }



   typedef uint8_t _task_type;
  _task_type task;

   typedef  ::dji_osdk_ros::JoystickParams_<ContainerAllocator>  _joystickCommand_type;
  _joystickCommand_type joystickCommand;

   typedef uint32_t _velocityControlTimeMs_type;
  _velocityControlTimeMs_type velocityControlTimeMs;

   typedef float _posThresholdInM_type;
  _posThresholdInM_type posThresholdInM;

   typedef float _yawThresholdInDeg_type;
  _yawThresholdInDeg_type yawThresholdInDeg;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(TASK_GOHOME)
  #undef TASK_GOHOME
#endif
#if defined(_WIN32) && defined(TASK_POSITION_AND_YAW_CONTROL)
  #undef TASK_POSITION_AND_YAW_CONTROL
#endif
#if defined(_WIN32) && defined(TASK_GOHOME_AND_CONFIRM_LANDING)
  #undef TASK_GOHOME_AND_CONFIRM_LANDING
#endif
#if defined(_WIN32) && defined(TASK_TAKEOFF)
  #undef TASK_TAKEOFF
#endif
#if defined(_WIN32) && defined(TASK_VELOCITY_AND_YAWRATE_CONTROL)
  #undef TASK_VELOCITY_AND_YAWRATE_CONTROL
#endif
#if defined(_WIN32) && defined(TASK_LAND)
  #undef TASK_LAND
#endif
#if defined(_WIN32) && defined(START_MOTOR)
  #undef START_MOTOR
#endif
#if defined(_WIN32) && defined(STOP_MOTOR)
  #undef STOP_MOTOR
#endif
#if defined(_WIN32) && defined(TASK_EXIT_GO_HOME)
  #undef TASK_EXIT_GO_HOME
#endif
#if defined(_WIN32) && defined(TASK_EXIT_LANDING)
  #undef TASK_EXIT_LANDING
#endif
#if defined(_WIN32) && defined(TASK_FORCE_LANDING_AVOID_GROUND)
  #undef TASK_FORCE_LANDING_AVOID_GROUND
#endif
#if defined(_WIN32) && defined(TASK_FORCE_LANDING)
  #undef TASK_FORCE_LANDING
#endif

  enum {
    TASK_GOHOME = 1u,
    TASK_POSITION_AND_YAW_CONTROL = 2u,
    TASK_GOHOME_AND_CONFIRM_LANDING = 3u,
    TASK_TAKEOFF = 4u,
    TASK_VELOCITY_AND_YAWRATE_CONTROL = 5u,
    TASK_LAND = 6u,
    START_MOTOR = 7u,
    STOP_MOTOR = 8u,
    TASK_EXIT_GO_HOME = 12u,
    TASK_EXIT_LANDING = 14u,
    TASK_FORCE_LANDING_AVOID_GROUND = 30u,
    TASK_FORCE_LANDING = 31u,
  };


  typedef boost::shared_ptr< ::dji_osdk_ros::FlightTaskControlRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dji_osdk_ros::FlightTaskControlRequest_<ContainerAllocator> const> ConstPtr;

}; // struct FlightTaskControlRequest_

typedef ::dji_osdk_ros::FlightTaskControlRequest_<std::allocator<void> > FlightTaskControlRequest;

typedef boost::shared_ptr< ::dji_osdk_ros::FlightTaskControlRequest > FlightTaskControlRequestPtr;
typedef boost::shared_ptr< ::dji_osdk_ros::FlightTaskControlRequest const> FlightTaskControlRequestConstPtr;

// constants requiring out of line definition

   

   

   

   

   

   

   

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dji_osdk_ros::FlightTaskControlRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dji_osdk_ros::FlightTaskControlRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::dji_osdk_ros::FlightTaskControlRequest_<ContainerAllocator1> & lhs, const ::dji_osdk_ros::FlightTaskControlRequest_<ContainerAllocator2> & rhs)
{
  return lhs.task == rhs.task &&
    lhs.joystickCommand == rhs.joystickCommand &&
    lhs.velocityControlTimeMs == rhs.velocityControlTimeMs &&
    lhs.posThresholdInM == rhs.posThresholdInM &&
    lhs.yawThresholdInDeg == rhs.yawThresholdInDeg;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::dji_osdk_ros::FlightTaskControlRequest_<ContainerAllocator1> & lhs, const ::dji_osdk_ros::FlightTaskControlRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace dji_osdk_ros

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::dji_osdk_ros::FlightTaskControlRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dji_osdk_ros::FlightTaskControlRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dji_osdk_ros::FlightTaskControlRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dji_osdk_ros::FlightTaskControlRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dji_osdk_ros::FlightTaskControlRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dji_osdk_ros::FlightTaskControlRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dji_osdk_ros::FlightTaskControlRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6652475a09e6d73ddea1c35a04a8b599";
  }

  static const char* value(const ::dji_osdk_ros::FlightTaskControlRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6652475a09e6d73dULL;
  static const uint64_t static_value2 = 0xdea1c35a04a8b599ULL;
};

template<class ContainerAllocator>
struct DataType< ::dji_osdk_ros::FlightTaskControlRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dji_osdk_ros/FlightTaskControlRequest";
  }

  static const char* value(const ::dji_osdk_ros::FlightTaskControlRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dji_osdk_ros::FlightTaskControlRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#constant for tasks\n"
"uint8 TASK_GOHOME = 1\n"
"uint8 TASK_POSITION_AND_YAW_CONTROL   = 2\n"
"uint8 TASK_GOHOME_AND_CONFIRM_LANDING = 3\n"
"uint8 TASK_TAKEOFF = 4\n"
"uint8 TASK_VELOCITY_AND_YAWRATE_CONTROL = 5\n"
"uint8 TASK_LAND          = 6\n"
"uint8 START_MOTOR        = 7\n"
"uint8 STOP_MOTOR         = 8\n"
"uint8 TASK_EXIT_GO_HOME  = 12\n"
"uint8 TASK_EXIT_LANDING  = 14\n"
"uint8 TASK_FORCE_LANDING_AVOID_GROUND = 30 #/*!< confirm landing */\n"
"uint8 TASK_FORCE_LANDING              = 31 #/*!< force landing */\n"
"\n"
"#request\n"
"uint8 task    # see constants above for possible tasks\n"
"JoystickParams joystickCommand  #Provide Position and Velocity control\n"
"uint32 velocityControlTimeMs    #Velocity control time\n"
"float32 posThresholdInM  #(Meter)\n"
"float32 yawThresholdInDeg  #(Degree)\n"
"\n"
"================================================================================\n"
"MSG: dji_osdk_ros/JoystickParams\n"
"float32 x   # Control with respect to the x axis of the\n"
"            # DJI::OSDK::Control::HorizontalCoordinate.\n"
"float32 y   # Control with respect to the y axis of the\n"
"            # DJI::OSDK::Control::HorizontalCoordinate.\n"
"float32 z   # Control with respect to the z axis, up is positive.\n"
"float32 yaw #Yaw position/velocity control w.r.t. the ground frame.\n"
;
  }

  static const char* value(const ::dji_osdk_ros::FlightTaskControlRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dji_osdk_ros::FlightTaskControlRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.task);
      stream.next(m.joystickCommand);
      stream.next(m.velocityControlTimeMs);
      stream.next(m.posThresholdInM);
      stream.next(m.yawThresholdInDeg);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct FlightTaskControlRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dji_osdk_ros::FlightTaskControlRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dji_osdk_ros::FlightTaskControlRequest_<ContainerAllocator>& v)
  {
    s << indent << "task: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.task);
    s << indent << "joystickCommand: ";
    s << std::endl;
    Printer< ::dji_osdk_ros::JoystickParams_<ContainerAllocator> >::stream(s, indent + "  ", v.joystickCommand);
    s << indent << "velocityControlTimeMs: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.velocityControlTimeMs);
    s << indent << "posThresholdInM: ";
    Printer<float>::stream(s, indent + "  ", v.posThresholdInM);
    s << indent << "yawThresholdInDeg: ";
    Printer<float>::stream(s, indent + "  ", v.yawThresholdInDeg);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DJI_OSDK_ROS_MESSAGE_FLIGHTTASKCONTROLREQUEST_H