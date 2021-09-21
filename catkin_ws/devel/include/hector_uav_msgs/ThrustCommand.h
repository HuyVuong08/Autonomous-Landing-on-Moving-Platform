// Generated by gencpp from file hector_uav_msgs/ThrustCommand.msg
// DO NOT EDIT!


#ifndef HECTOR_UAV_MSGS_MESSAGE_THRUSTCOMMAND_H
#define HECTOR_UAV_MSGS_MESSAGE_THRUSTCOMMAND_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace hector_uav_msgs
{
template <class ContainerAllocator>
struct ThrustCommand_
{
  typedef ThrustCommand_<ContainerAllocator> Type;

  ThrustCommand_()
    : header()
    , thrust(0.0)  {
    }
  ThrustCommand_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , thrust(0.0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef float _thrust_type;
  _thrust_type thrust;





  typedef boost::shared_ptr< ::hector_uav_msgs::ThrustCommand_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::hector_uav_msgs::ThrustCommand_<ContainerAllocator> const> ConstPtr;

}; // struct ThrustCommand_

typedef ::hector_uav_msgs::ThrustCommand_<std::allocator<void> > ThrustCommand;

typedef boost::shared_ptr< ::hector_uav_msgs::ThrustCommand > ThrustCommandPtr;
typedef boost::shared_ptr< ::hector_uav_msgs::ThrustCommand const> ThrustCommandConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::hector_uav_msgs::ThrustCommand_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::hector_uav_msgs::ThrustCommand_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::hector_uav_msgs::ThrustCommand_<ContainerAllocator1> & lhs, const ::hector_uav_msgs::ThrustCommand_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.thrust == rhs.thrust;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::hector_uav_msgs::ThrustCommand_<ContainerAllocator1> & lhs, const ::hector_uav_msgs::ThrustCommand_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace hector_uav_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::hector_uav_msgs::ThrustCommand_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hector_uav_msgs::ThrustCommand_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hector_uav_msgs::ThrustCommand_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hector_uav_msgs::ThrustCommand_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hector_uav_msgs::ThrustCommand_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hector_uav_msgs::ThrustCommand_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::hector_uav_msgs::ThrustCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c61da3a8868a8b502eaf0b0abd839f57";
  }

  static const char* value(const ::hector_uav_msgs::ThrustCommand_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc61da3a8868a8b50ULL;
  static const uint64_t static_value2 = 0x2eaf0b0abd839f57ULL;
};

template<class ContainerAllocator>
struct DataType< ::hector_uav_msgs::ThrustCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "hector_uav_msgs/ThrustCommand";
  }

  static const char* value(const ::hector_uav_msgs::ThrustCommand_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::hector_uav_msgs::ThrustCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"float32 thrust\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
;
  }

  static const char* value(const ::hector_uav_msgs::ThrustCommand_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::hector_uav_msgs::ThrustCommand_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.thrust);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ThrustCommand_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::hector_uav_msgs::ThrustCommand_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::hector_uav_msgs::ThrustCommand_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "thrust: ";
    Printer<float>::stream(s, indent + "  ", v.thrust);
  }
};

} // namespace message_operations
} // namespace ros

#endif // HECTOR_UAV_MSGS_MESSAGE_THRUSTCOMMAND_H
