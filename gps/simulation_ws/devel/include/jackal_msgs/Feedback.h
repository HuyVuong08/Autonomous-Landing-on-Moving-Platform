// Generated by gencpp from file jackal_msgs/Feedback.msg
// DO NOT EDIT!


#ifndef JACKAL_MSGS_MESSAGE_FEEDBACK_H
#define JACKAL_MSGS_MESSAGE_FEEDBACK_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <jackal_msgs/DriveFeedback.h>

namespace jackal_msgs
{
template <class ContainerAllocator>
struct Feedback_
{
  typedef Feedback_<ContainerAllocator> Type;

  Feedback_()
    : header()
    , drivers()
    , pcb_temperature(0.0)
    , mcu_temperature(0.0)
    , commanded_mode(0)
    , actual_mode(0)  {
    }
  Feedback_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , drivers()
    , pcb_temperature(0.0)
    , mcu_temperature(0.0)
    , commanded_mode(0)
    , actual_mode(0)  {
  (void)_alloc;
      drivers.assign( ::jackal_msgs::DriveFeedback_<ContainerAllocator> (_alloc));
  }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef boost::array< ::jackal_msgs::DriveFeedback_<ContainerAllocator> , 2>  _drivers_type;
  _drivers_type drivers;

   typedef float _pcb_temperature_type;
  _pcb_temperature_type pcb_temperature;

   typedef float _mcu_temperature_type;
  _mcu_temperature_type mcu_temperature;

   typedef int8_t _commanded_mode_type;
  _commanded_mode_type commanded_mode;

   typedef int8_t _actual_mode_type;
  _actual_mode_type actual_mode;





  typedef boost::shared_ptr< ::jackal_msgs::Feedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::jackal_msgs::Feedback_<ContainerAllocator> const> ConstPtr;

}; // struct Feedback_

typedef ::jackal_msgs::Feedback_<std::allocator<void> > Feedback;

typedef boost::shared_ptr< ::jackal_msgs::Feedback > FeedbackPtr;
typedef boost::shared_ptr< ::jackal_msgs::Feedback const> FeedbackConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::jackal_msgs::Feedback_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::jackal_msgs::Feedback_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace jackal_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'jackal_msgs': ['/home/mercedes-benz-s-450/Desktop/Autonomous-Landing-on-Moving-Platform/gps/simulation_ws/src/jackal/jackal/jackal_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::jackal_msgs::Feedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::jackal_msgs::Feedback_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::jackal_msgs::Feedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::jackal_msgs::Feedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::jackal_msgs::Feedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::jackal_msgs::Feedback_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::jackal_msgs::Feedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3bdabb0ef46338ee5672d1b82220ab49";
  }

  static const char* value(const ::jackal_msgs::Feedback_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3bdabb0ef46338eeULL;
  static const uint64_t static_value2 = 0x5672d1b82220ab49ULL;
};

template<class ContainerAllocator>
struct DataType< ::jackal_msgs::Feedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "jackal_msgs/Feedback";
  }

  static const char* value(const ::jackal_msgs::Feedback_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::jackal_msgs::Feedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# This message represents high-frequency feedback from the MCU,\n\
# as necessary to support closed-loop control and thermal monitoring.\n\
# Default publish frequency is 50Hz.\n\
\n\
Header header\n\
\n\
DriveFeedback[2] drivers\n\
\n\
# Temperatures \n\
float32 pcb_temperature\n\
float32 mcu_temperature\n\
\n\
# Commanded control mode, use the TYPE_ constants from jackal_msgs/Drive.\n\
int8 commanded_mode\n\
\n\
# Actual control mode. This may differ from the commanded in cases where\n\
# the motor enable is off, the motors are in over-current, etc.\n\
int8 actual_mode\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: jackal_msgs/DriveFeedback\n\
# This message represents feedback data from a single drive unit (driver + motor).\n\
\n\
# Current flowing from battery into the MOSFET bridge.\n\
float32 current\n\
\n\
# Instantaneous duty cycle of MOSFET bridge.\n\
float32 duty_cycle\n\
\n\
# Temperatures measured in the MOSFET bridge and on the motor casing, in deg C.\n\
float32 bridge_temperature\n\
float32 motor_temperature\n\
\n\
# Encoder data\n\
float32 measured_velocity   # rad/s\n\
float32 measured_travel     # rad\n\
\n\
# True if the underlying driver chip reports a fault condition.\n\
bool driver_fault\n\
";
  }

  static const char* value(const ::jackal_msgs::Feedback_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::jackal_msgs::Feedback_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.drivers);
      stream.next(m.pcb_temperature);
      stream.next(m.mcu_temperature);
      stream.next(m.commanded_mode);
      stream.next(m.actual_mode);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Feedback_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::jackal_msgs::Feedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::jackal_msgs::Feedback_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "drivers[]" << std::endl;
    for (size_t i = 0; i < v.drivers.size(); ++i)
    {
      s << indent << "  drivers[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::jackal_msgs::DriveFeedback_<ContainerAllocator> >::stream(s, indent + "    ", v.drivers[i]);
    }
    s << indent << "pcb_temperature: ";
    Printer<float>::stream(s, indent + "  ", v.pcb_temperature);
    s << indent << "mcu_temperature: ";
    Printer<float>::stream(s, indent + "  ", v.mcu_temperature);
    s << indent << "commanded_mode: ";
    Printer<int8_t>::stream(s, indent + "  ", v.commanded_mode);
    s << indent << "actual_mode: ";
    Printer<int8_t>::stream(s, indent + "  ", v.actual_mode);
  }
};

} // namespace message_operations
} // namespace ros

#endif // JACKAL_MSGS_MESSAGE_FEEDBACK_H
