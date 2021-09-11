// Generated by gencpp from file dji_osdk_ros/SetCurrentAircraftLocAsHomePointRequest.msg
// DO NOT EDIT!


#ifndef DJI_OSDK_ROS_MESSAGE_SETCURRENTAIRCRAFTLOCASHOMEPOINTREQUEST_H
#define DJI_OSDK_ROS_MESSAGE_SETCURRENTAIRCRAFTLOCASHOMEPOINTREQUEST_H


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
struct SetCurrentAircraftLocAsHomePointRequest_
{
  typedef SetCurrentAircraftLocAsHomePointRequest_<ContainerAllocator> Type;

  SetCurrentAircraftLocAsHomePointRequest_()
    {
    }
  SetCurrentAircraftLocAsHomePointRequest_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::dji_osdk_ros::SetCurrentAircraftLocAsHomePointRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dji_osdk_ros::SetCurrentAircraftLocAsHomePointRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SetCurrentAircraftLocAsHomePointRequest_

typedef ::dji_osdk_ros::SetCurrentAircraftLocAsHomePointRequest_<std::allocator<void> > SetCurrentAircraftLocAsHomePointRequest;

typedef boost::shared_ptr< ::dji_osdk_ros::SetCurrentAircraftLocAsHomePointRequest > SetCurrentAircraftLocAsHomePointRequestPtr;
typedef boost::shared_ptr< ::dji_osdk_ros::SetCurrentAircraftLocAsHomePointRequest const> SetCurrentAircraftLocAsHomePointRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dji_osdk_ros::SetCurrentAircraftLocAsHomePointRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dji_osdk_ros::SetCurrentAircraftLocAsHomePointRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace dji_osdk_ros

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::dji_osdk_ros::SetCurrentAircraftLocAsHomePointRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dji_osdk_ros::SetCurrentAircraftLocAsHomePointRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dji_osdk_ros::SetCurrentAircraftLocAsHomePointRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dji_osdk_ros::SetCurrentAircraftLocAsHomePointRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dji_osdk_ros::SetCurrentAircraftLocAsHomePointRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dji_osdk_ros::SetCurrentAircraftLocAsHomePointRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dji_osdk_ros::SetCurrentAircraftLocAsHomePointRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::dji_osdk_ros::SetCurrentAircraftLocAsHomePointRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::dji_osdk_ros::SetCurrentAircraftLocAsHomePointRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dji_osdk_ros/SetCurrentAircraftLocAsHomePointRequest";
  }

  static const char* value(const ::dji_osdk_ros::SetCurrentAircraftLocAsHomePointRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dji_osdk_ros::SetCurrentAircraftLocAsHomePointRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
;
  }

  static const char* value(const ::dji_osdk_ros::SetCurrentAircraftLocAsHomePointRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dji_osdk_ros::SetCurrentAircraftLocAsHomePointRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetCurrentAircraftLocAsHomePointRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dji_osdk_ros::SetCurrentAircraftLocAsHomePointRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::dji_osdk_ros::SetCurrentAircraftLocAsHomePointRequest_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // DJI_OSDK_ROS_MESSAGE_SETCURRENTAIRCRAFTLOCASHOMEPOINTREQUEST_H
