// Generated by gencpp from file dji_osdk_ros/MissionHpUpdateRadiusRequest.msg
// DO NOT EDIT!


#ifndef DJI_OSDK_ROS_MESSAGE_MISSIONHPUPDATERADIUSREQUEST_H
#define DJI_OSDK_ROS_MESSAGE_MISSIONHPUPDATERADIUSREQUEST_H


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
struct MissionHpUpdateRadiusRequest_
{
  typedef MissionHpUpdateRadiusRequest_<ContainerAllocator> Type;

  MissionHpUpdateRadiusRequest_()
    : radius(0.0)  {
    }
  MissionHpUpdateRadiusRequest_(const ContainerAllocator& _alloc)
    : radius(0.0)  {
  (void)_alloc;
    }



   typedef float _radius_type;
  _radius_type radius;





  typedef boost::shared_ptr< ::dji_osdk_ros::MissionHpUpdateRadiusRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dji_osdk_ros::MissionHpUpdateRadiusRequest_<ContainerAllocator> const> ConstPtr;

}; // struct MissionHpUpdateRadiusRequest_

typedef ::dji_osdk_ros::MissionHpUpdateRadiusRequest_<std::allocator<void> > MissionHpUpdateRadiusRequest;

typedef boost::shared_ptr< ::dji_osdk_ros::MissionHpUpdateRadiusRequest > MissionHpUpdateRadiusRequestPtr;
typedef boost::shared_ptr< ::dji_osdk_ros::MissionHpUpdateRadiusRequest const> MissionHpUpdateRadiusRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dji_osdk_ros::MissionHpUpdateRadiusRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dji_osdk_ros::MissionHpUpdateRadiusRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::dji_osdk_ros::MissionHpUpdateRadiusRequest_<ContainerAllocator1> & lhs, const ::dji_osdk_ros::MissionHpUpdateRadiusRequest_<ContainerAllocator2> & rhs)
{
  return lhs.radius == rhs.radius;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::dji_osdk_ros::MissionHpUpdateRadiusRequest_<ContainerAllocator1> & lhs, const ::dji_osdk_ros::MissionHpUpdateRadiusRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace dji_osdk_ros

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::dji_osdk_ros::MissionHpUpdateRadiusRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dji_osdk_ros::MissionHpUpdateRadiusRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dji_osdk_ros::MissionHpUpdateRadiusRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dji_osdk_ros::MissionHpUpdateRadiusRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dji_osdk_ros::MissionHpUpdateRadiusRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dji_osdk_ros::MissionHpUpdateRadiusRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dji_osdk_ros::MissionHpUpdateRadiusRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0b690044065f2210effb664cc7a28125";
  }

  static const char* value(const ::dji_osdk_ros::MissionHpUpdateRadiusRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0b690044065f2210ULL;
  static const uint64_t static_value2 = 0xeffb664cc7a28125ULL;
};

template<class ContainerAllocator>
struct DataType< ::dji_osdk_ros::MissionHpUpdateRadiusRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dji_osdk_ros/MissionHpUpdateRadiusRequest";
  }

  static const char* value(const ::dji_osdk_ros::MissionHpUpdateRadiusRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dji_osdk_ros::MissionHpUpdateRadiusRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 radius      # in meters\n"
;
  }

  static const char* value(const ::dji_osdk_ros::MissionHpUpdateRadiusRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dji_osdk_ros::MissionHpUpdateRadiusRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.radius);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MissionHpUpdateRadiusRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dji_osdk_ros::MissionHpUpdateRadiusRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dji_osdk_ros::MissionHpUpdateRadiusRequest_<ContainerAllocator>& v)
  {
    s << indent << "radius: ";
    Printer<float>::stream(s, indent + "  ", v.radius);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DJI_OSDK_ROS_MESSAGE_MISSIONHPUPDATERADIUSREQUEST_H
