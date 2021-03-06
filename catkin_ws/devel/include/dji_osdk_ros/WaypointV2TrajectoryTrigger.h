// Generated by gencpp from file dji_osdk_ros/WaypointV2TrajectoryTrigger.msg
// DO NOT EDIT!


#ifndef DJI_OSDK_ROS_MESSAGE_WAYPOINTV2TRAJECTORYTRIGGER_H
#define DJI_OSDK_ROS_MESSAGE_WAYPOINTV2TRAJECTORYTRIGGER_H


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
struct WaypointV2TrajectoryTrigger_
{
  typedef WaypointV2TrajectoryTrigger_<ContainerAllocator> Type;

  WaypointV2TrajectoryTrigger_()
    : startIndex(0)
    , endIndex(0)  {
    }
  WaypointV2TrajectoryTrigger_(const ContainerAllocator& _alloc)
    : startIndex(0)
    , endIndex(0)  {
  (void)_alloc;
    }



   typedef uint16_t _startIndex_type;
  _startIndex_type startIndex;

   typedef uint16_t _endIndex_type;
  _endIndex_type endIndex;





  typedef boost::shared_ptr< ::dji_osdk_ros::WaypointV2TrajectoryTrigger_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dji_osdk_ros::WaypointV2TrajectoryTrigger_<ContainerAllocator> const> ConstPtr;

}; // struct WaypointV2TrajectoryTrigger_

typedef ::dji_osdk_ros::WaypointV2TrajectoryTrigger_<std::allocator<void> > WaypointV2TrajectoryTrigger;

typedef boost::shared_ptr< ::dji_osdk_ros::WaypointV2TrajectoryTrigger > WaypointV2TrajectoryTriggerPtr;
typedef boost::shared_ptr< ::dji_osdk_ros::WaypointV2TrajectoryTrigger const> WaypointV2TrajectoryTriggerConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dji_osdk_ros::WaypointV2TrajectoryTrigger_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dji_osdk_ros::WaypointV2TrajectoryTrigger_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::dji_osdk_ros::WaypointV2TrajectoryTrigger_<ContainerAllocator1> & lhs, const ::dji_osdk_ros::WaypointV2TrajectoryTrigger_<ContainerAllocator2> & rhs)
{
  return lhs.startIndex == rhs.startIndex &&
    lhs.endIndex == rhs.endIndex;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::dji_osdk_ros::WaypointV2TrajectoryTrigger_<ContainerAllocator1> & lhs, const ::dji_osdk_ros::WaypointV2TrajectoryTrigger_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace dji_osdk_ros

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::dji_osdk_ros::WaypointV2TrajectoryTrigger_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dji_osdk_ros::WaypointV2TrajectoryTrigger_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dji_osdk_ros::WaypointV2TrajectoryTrigger_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dji_osdk_ros::WaypointV2TrajectoryTrigger_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dji_osdk_ros::WaypointV2TrajectoryTrigger_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dji_osdk_ros::WaypointV2TrajectoryTrigger_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dji_osdk_ros::WaypointV2TrajectoryTrigger_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a990a2081bb526bf9f60173c3e6fc781";
  }

  static const char* value(const ::dji_osdk_ros::WaypointV2TrajectoryTrigger_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa990a2081bb526bfULL;
  static const uint64_t static_value2 = 0x9f60173c3e6fc781ULL;
};

template<class ContainerAllocator>
struct DataType< ::dji_osdk_ros::WaypointV2TrajectoryTrigger_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dji_osdk_ros/WaypointV2TrajectoryTrigger";
  }

  static const char* value(const ::dji_osdk_ros::WaypointV2TrajectoryTrigger_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dji_osdk_ros::WaypointV2TrajectoryTrigger_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# This class represents a trajectory trigger action when should be trigger.\n"
"\n"
"uint16 startIndex # It determines the index of the waypoint at which the trigger starts.\n"
"uint16 endIndex   # It determines the waypoint when the trigger stops.\n"
"\n"
;
  }

  static const char* value(const ::dji_osdk_ros::WaypointV2TrajectoryTrigger_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dji_osdk_ros::WaypointV2TrajectoryTrigger_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.startIndex);
      stream.next(m.endIndex);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct WaypointV2TrajectoryTrigger_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dji_osdk_ros::WaypointV2TrajectoryTrigger_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dji_osdk_ros::WaypointV2TrajectoryTrigger_<ContainerAllocator>& v)
  {
    s << indent << "startIndex: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.startIndex);
    s << indent << "endIndex: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.endIndex);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DJI_OSDK_ROS_MESSAGE_WAYPOINTV2TRAJECTORYTRIGGER_H
