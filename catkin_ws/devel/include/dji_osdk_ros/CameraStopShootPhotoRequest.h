// Generated by gencpp from file dji_osdk_ros/CameraStopShootPhotoRequest.msg
// DO NOT EDIT!


#ifndef DJI_OSDK_ROS_MESSAGE_CAMERASTOPSHOOTPHOTOREQUEST_H
#define DJI_OSDK_ROS_MESSAGE_CAMERASTOPSHOOTPHOTOREQUEST_H


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
struct CameraStopShootPhotoRequest_
{
  typedef CameraStopShootPhotoRequest_<ContainerAllocator> Type;

  CameraStopShootPhotoRequest_()
    : payload_index(0)  {
    }
  CameraStopShootPhotoRequest_(const ContainerAllocator& _alloc)
    : payload_index(0)  {
  (void)_alloc;
    }



   typedef uint8_t _payload_index_type;
  _payload_index_type payload_index;





  typedef boost::shared_ptr< ::dji_osdk_ros::CameraStopShootPhotoRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dji_osdk_ros::CameraStopShootPhotoRequest_<ContainerAllocator> const> ConstPtr;

}; // struct CameraStopShootPhotoRequest_

typedef ::dji_osdk_ros::CameraStopShootPhotoRequest_<std::allocator<void> > CameraStopShootPhotoRequest;

typedef boost::shared_ptr< ::dji_osdk_ros::CameraStopShootPhotoRequest > CameraStopShootPhotoRequestPtr;
typedef boost::shared_ptr< ::dji_osdk_ros::CameraStopShootPhotoRequest const> CameraStopShootPhotoRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dji_osdk_ros::CameraStopShootPhotoRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dji_osdk_ros::CameraStopShootPhotoRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::dji_osdk_ros::CameraStopShootPhotoRequest_<ContainerAllocator1> & lhs, const ::dji_osdk_ros::CameraStopShootPhotoRequest_<ContainerAllocator2> & rhs)
{
  return lhs.payload_index == rhs.payload_index;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::dji_osdk_ros::CameraStopShootPhotoRequest_<ContainerAllocator1> & lhs, const ::dji_osdk_ros::CameraStopShootPhotoRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace dji_osdk_ros

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::dji_osdk_ros::CameraStopShootPhotoRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dji_osdk_ros::CameraStopShootPhotoRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dji_osdk_ros::CameraStopShootPhotoRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dji_osdk_ros::CameraStopShootPhotoRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dji_osdk_ros::CameraStopShootPhotoRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dji_osdk_ros::CameraStopShootPhotoRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dji_osdk_ros::CameraStopShootPhotoRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "087e4b79c363f5bfb691f293afe1e9e8";
  }

  static const char* value(const ::dji_osdk_ros::CameraStopShootPhotoRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x087e4b79c363f5bfULL;
  static const uint64_t static_value2 = 0xb691f293afe1e9e8ULL;
};

template<class ContainerAllocator>
struct DataType< ::dji_osdk_ros::CameraStopShootPhotoRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dji_osdk_ros/CameraStopShootPhotoRequest";
  }

  static const char* value(const ::dji_osdk_ros::CameraStopShootPhotoRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dji_osdk_ros::CameraStopShootPhotoRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#request\n"
"uint8 payload_index #see enum class PayloadIndex in common_type.h\n"
;
  }

  static const char* value(const ::dji_osdk_ros::CameraStopShootPhotoRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dji_osdk_ros::CameraStopShootPhotoRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.payload_index);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CameraStopShootPhotoRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dji_osdk_ros::CameraStopShootPhotoRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dji_osdk_ros::CameraStopShootPhotoRequest_<ContainerAllocator>& v)
  {
    s << indent << "payload_index: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.payload_index);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DJI_OSDK_ROS_MESSAGE_CAMERASTOPSHOOTPHOTOREQUEST_H
