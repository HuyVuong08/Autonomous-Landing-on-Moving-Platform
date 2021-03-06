// Generated by gencpp from file dji_osdk_ros/CameraZoomCtrlRequest.msg
// DO NOT EDIT!


#ifndef DJI_OSDK_ROS_MESSAGE_CAMERAZOOMCTRLREQUEST_H
#define DJI_OSDK_ROS_MESSAGE_CAMERAZOOMCTRLREQUEST_H


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
struct CameraZoomCtrlRequest_
{
  typedef CameraZoomCtrlRequest_<ContainerAllocator> Type;

  CameraZoomCtrlRequest_()
    : start_stop(0)
    , payload_index(0)
    , direction(0)
    , speed(0)  {
    }
  CameraZoomCtrlRequest_(const ContainerAllocator& _alloc)
    : start_stop(0)
    , payload_index(0)
    , direction(0)
    , speed(0)  {
  (void)_alloc;
    }



   typedef uint8_t _start_stop_type;
  _start_stop_type start_stop;

   typedef uint8_t _payload_index_type;
  _payload_index_type payload_index;

   typedef uint8_t _direction_type;
  _direction_type direction;

   typedef uint8_t _speed_type;
  _speed_type speed;





  typedef boost::shared_ptr< ::dji_osdk_ros::CameraZoomCtrlRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dji_osdk_ros::CameraZoomCtrlRequest_<ContainerAllocator> const> ConstPtr;

}; // struct CameraZoomCtrlRequest_

typedef ::dji_osdk_ros::CameraZoomCtrlRequest_<std::allocator<void> > CameraZoomCtrlRequest;

typedef boost::shared_ptr< ::dji_osdk_ros::CameraZoomCtrlRequest > CameraZoomCtrlRequestPtr;
typedef boost::shared_ptr< ::dji_osdk_ros::CameraZoomCtrlRequest const> CameraZoomCtrlRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dji_osdk_ros::CameraZoomCtrlRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dji_osdk_ros::CameraZoomCtrlRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::dji_osdk_ros::CameraZoomCtrlRequest_<ContainerAllocator1> & lhs, const ::dji_osdk_ros::CameraZoomCtrlRequest_<ContainerAllocator2> & rhs)
{
  return lhs.start_stop == rhs.start_stop &&
    lhs.payload_index == rhs.payload_index &&
    lhs.direction == rhs.direction &&
    lhs.speed == rhs.speed;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::dji_osdk_ros::CameraZoomCtrlRequest_<ContainerAllocator1> & lhs, const ::dji_osdk_ros::CameraZoomCtrlRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace dji_osdk_ros

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::dji_osdk_ros::CameraZoomCtrlRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dji_osdk_ros::CameraZoomCtrlRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dji_osdk_ros::CameraZoomCtrlRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dji_osdk_ros::CameraZoomCtrlRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dji_osdk_ros::CameraZoomCtrlRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dji_osdk_ros::CameraZoomCtrlRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dji_osdk_ros::CameraZoomCtrlRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "eb87496f9d2e6a41cb9eba5a893d4069";
  }

  static const char* value(const ::dji_osdk_ros::CameraZoomCtrlRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xeb87496f9d2e6a41ULL;
  static const uint64_t static_value2 = 0xcb9eba5a893d4069ULL;
};

template<class ContainerAllocator>
struct DataType< ::dji_osdk_ros::CameraZoomCtrlRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dji_osdk_ros/CameraZoomCtrlRequest";
  }

  static const char* value(const ::dji_osdk_ros::CameraZoomCtrlRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dji_osdk_ros::CameraZoomCtrlRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#request\n"
"uint8 start_stop\n"
"uint8 payload_index #see enum class PayloadIndex in common_type.h\n"
"uint8 direction #see enum class ZoomDirection in common_type.h\n"
"uint8 speed #see enum class ZoomSpeed in common_type.h\n"
;
  }

  static const char* value(const ::dji_osdk_ros::CameraZoomCtrlRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dji_osdk_ros::CameraZoomCtrlRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.start_stop);
      stream.next(m.payload_index);
      stream.next(m.direction);
      stream.next(m.speed);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CameraZoomCtrlRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dji_osdk_ros::CameraZoomCtrlRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dji_osdk_ros::CameraZoomCtrlRequest_<ContainerAllocator>& v)
  {
    s << indent << "start_stop: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.start_stop);
    s << indent << "payload_index: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.payload_index);
    s << indent << "direction: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.direction);
    s << indent << "speed: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.speed);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DJI_OSDK_ROS_MESSAGE_CAMERAZOOMCTRLREQUEST_H
