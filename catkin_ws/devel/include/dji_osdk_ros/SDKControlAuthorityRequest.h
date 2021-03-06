// Generated by gencpp from file dji_osdk_ros/SDKControlAuthorityRequest.msg
// DO NOT EDIT!


#ifndef DJI_OSDK_ROS_MESSAGE_SDKCONTROLAUTHORITYREQUEST_H
#define DJI_OSDK_ROS_MESSAGE_SDKCONTROLAUTHORITYREQUEST_H


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
struct SDKControlAuthorityRequest_
{
  typedef SDKControlAuthorityRequest_<ContainerAllocator> Type;

  SDKControlAuthorityRequest_()
    : control_enable(0)  {
    }
  SDKControlAuthorityRequest_(const ContainerAllocator& _alloc)
    : control_enable(0)  {
  (void)_alloc;
    }



   typedef uint8_t _control_enable_type;
  _control_enable_type control_enable;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(RELEASE_CONTROL)
  #undef RELEASE_CONTROL
#endif
#if defined(_WIN32) && defined(REQUEST_CONTROL)
  #undef REQUEST_CONTROL
#endif

  enum {
    RELEASE_CONTROL = 0u,
    REQUEST_CONTROL = 1u,
  };


  typedef boost::shared_ptr< ::dji_osdk_ros::SDKControlAuthorityRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dji_osdk_ros::SDKControlAuthorityRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SDKControlAuthorityRequest_

typedef ::dji_osdk_ros::SDKControlAuthorityRequest_<std::allocator<void> > SDKControlAuthorityRequest;

typedef boost::shared_ptr< ::dji_osdk_ros::SDKControlAuthorityRequest > SDKControlAuthorityRequestPtr;
typedef boost::shared_ptr< ::dji_osdk_ros::SDKControlAuthorityRequest const> SDKControlAuthorityRequestConstPtr;

// constants requiring out of line definition

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dji_osdk_ros::SDKControlAuthorityRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dji_osdk_ros::SDKControlAuthorityRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::dji_osdk_ros::SDKControlAuthorityRequest_<ContainerAllocator1> & lhs, const ::dji_osdk_ros::SDKControlAuthorityRequest_<ContainerAllocator2> & rhs)
{
  return lhs.control_enable == rhs.control_enable;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::dji_osdk_ros::SDKControlAuthorityRequest_<ContainerAllocator1> & lhs, const ::dji_osdk_ros::SDKControlAuthorityRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace dji_osdk_ros

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::dji_osdk_ros::SDKControlAuthorityRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dji_osdk_ros::SDKControlAuthorityRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dji_osdk_ros::SDKControlAuthorityRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dji_osdk_ros::SDKControlAuthorityRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dji_osdk_ros::SDKControlAuthorityRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dji_osdk_ros::SDKControlAuthorityRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dji_osdk_ros::SDKControlAuthorityRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4be067264420fcea65acedecc46466bd";
  }

  static const char* value(const ::dji_osdk_ros::SDKControlAuthorityRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4be067264420fceaULL;
  static const uint64_t static_value2 = 0x65acedecc46466bdULL;
};

template<class ContainerAllocator>
struct DataType< ::dji_osdk_ros::SDKControlAuthorityRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dji_osdk_ros/SDKControlAuthorityRequest";
  }

  static const char* value(const ::dji_osdk_ros::SDKControlAuthorityRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dji_osdk_ros::SDKControlAuthorityRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#constant for control_enable\n"
"uint8 RELEASE_CONTROL = 0\n"
"uint8 REQUEST_CONTROL = 1\n"
"\n"
"#request\n"
"uint8 control_enable    # see constants above\n"
;
  }

  static const char* value(const ::dji_osdk_ros::SDKControlAuthorityRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dji_osdk_ros::SDKControlAuthorityRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.control_enable);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SDKControlAuthorityRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dji_osdk_ros::SDKControlAuthorityRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dji_osdk_ros::SDKControlAuthorityRequest_<ContainerAllocator>& v)
  {
    s << indent << "control_enable: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.control_enable);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DJI_OSDK_ROS_MESSAGE_SDKCONTROLAUTHORITYREQUEST_H
