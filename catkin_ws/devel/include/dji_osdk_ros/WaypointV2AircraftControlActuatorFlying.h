// Generated by gencpp from file dji_osdk_ros/WaypointV2AircraftControlActuatorFlying.msg
// DO NOT EDIT!


#ifndef DJI_OSDK_ROS_MESSAGE_WAYPOINTV2AIRCRAFTCONTROLACTUATORFLYING_H
#define DJI_OSDK_ROS_MESSAGE_WAYPOINTV2AIRCRAFTCONTROLACTUATORFLYING_H


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
struct WaypointV2AircraftControlActuatorFlying_
{
  typedef WaypointV2AircraftControlActuatorFlying_<ContainerAllocator> Type;

  WaypointV2AircraftControlActuatorFlying_()
    : isStartFlying(0)  {
    }
  WaypointV2AircraftControlActuatorFlying_(const ContainerAllocator& _alloc)
    : isStartFlying(0)  {
  (void)_alloc;
    }



   typedef uint8_t _isStartFlying_type;
  _isStartFlying_type isStartFlying;





  typedef boost::shared_ptr< ::dji_osdk_ros::WaypointV2AircraftControlActuatorFlying_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dji_osdk_ros::WaypointV2AircraftControlActuatorFlying_<ContainerAllocator> const> ConstPtr;

}; // struct WaypointV2AircraftControlActuatorFlying_

typedef ::dji_osdk_ros::WaypointV2AircraftControlActuatorFlying_<std::allocator<void> > WaypointV2AircraftControlActuatorFlying;

typedef boost::shared_ptr< ::dji_osdk_ros::WaypointV2AircraftControlActuatorFlying > WaypointV2AircraftControlActuatorFlyingPtr;
typedef boost::shared_ptr< ::dji_osdk_ros::WaypointV2AircraftControlActuatorFlying const> WaypointV2AircraftControlActuatorFlyingConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dji_osdk_ros::WaypointV2AircraftControlActuatorFlying_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dji_osdk_ros::WaypointV2AircraftControlActuatorFlying_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::dji_osdk_ros::WaypointV2AircraftControlActuatorFlying_<ContainerAllocator1> & lhs, const ::dji_osdk_ros::WaypointV2AircraftControlActuatorFlying_<ContainerAllocator2> & rhs)
{
  return lhs.isStartFlying == rhs.isStartFlying;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::dji_osdk_ros::WaypointV2AircraftControlActuatorFlying_<ContainerAllocator1> & lhs, const ::dji_osdk_ros::WaypointV2AircraftControlActuatorFlying_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace dji_osdk_ros

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::dji_osdk_ros::WaypointV2AircraftControlActuatorFlying_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dji_osdk_ros::WaypointV2AircraftControlActuatorFlying_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dji_osdk_ros::WaypointV2AircraftControlActuatorFlying_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dji_osdk_ros::WaypointV2AircraftControlActuatorFlying_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dji_osdk_ros::WaypointV2AircraftControlActuatorFlying_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dji_osdk_ros::WaypointV2AircraftControlActuatorFlying_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dji_osdk_ros::WaypointV2AircraftControlActuatorFlying_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dc8731a524ee2cb9265a3e7483e070f3";
  }

  static const char* value(const ::dji_osdk_ros::WaypointV2AircraftControlActuatorFlying_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xdc8731a524ee2cb9ULL;
  static const uint64_t static_value2 = 0x265a3e7483e070f3ULL;
};

template<class ContainerAllocator>
struct DataType< ::dji_osdk_ros::WaypointV2AircraftControlActuatorFlying_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dji_osdk_ros/WaypointV2AircraftControlActuatorFlying";
  }

  static const char* value(const ::dji_osdk_ros::WaypointV2AircraftControlActuatorFlying_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dji_osdk_ros::WaypointV2AircraftControlActuatorFlying_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# This class defines if the aircraft starts or stops the flight.s.\n"
"uint8  isStartFlying  # Determines the aircraft start flying or stop flying.\n"
"                        # ``TRUE`` for the aircraft to start flying.\n"
;
  }

  static const char* value(const ::dji_osdk_ros::WaypointV2AircraftControlActuatorFlying_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dji_osdk_ros::WaypointV2AircraftControlActuatorFlying_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.isStartFlying);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct WaypointV2AircraftControlActuatorFlying_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dji_osdk_ros::WaypointV2AircraftControlActuatorFlying_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dji_osdk_ros::WaypointV2AircraftControlActuatorFlying_<ContainerAllocator>& v)
  {
    s << indent << "isStartFlying: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.isStartFlying);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DJI_OSDK_ROS_MESSAGE_WAYPOINTV2AIRCRAFTCONTROLACTUATORFLYING_H
