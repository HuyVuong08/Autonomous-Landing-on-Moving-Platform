// Generated by gencpp from file dji_osdk_ros/DroneArmControlRequest.msg
// DO NOT EDIT!


#ifndef DJI_OSDK_ROS_MESSAGE_DRONEARMCONTROLREQUEST_H
#define DJI_OSDK_ROS_MESSAGE_DRONEARMCONTROLREQUEST_H


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
struct DroneArmControlRequest_
{
  typedef DroneArmControlRequest_<ContainerAllocator> Type;

  DroneArmControlRequest_()
    : arm(0)  {
    }
  DroneArmControlRequest_(const ContainerAllocator& _alloc)
    : arm(0)  {
  (void)_alloc;
    }



   typedef uint8_t _arm_type;
  _arm_type arm;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(DISARM_COMMAND)
  #undef DISARM_COMMAND
#endif
#if defined(_WIN32) && defined(ARM_COMMAND)
  #undef ARM_COMMAND
#endif

  enum {
    DISARM_COMMAND = 0u,
    ARM_COMMAND = 1u,
  };


  typedef boost::shared_ptr< ::dji_osdk_ros::DroneArmControlRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dji_osdk_ros::DroneArmControlRequest_<ContainerAllocator> const> ConstPtr;

}; // struct DroneArmControlRequest_

typedef ::dji_osdk_ros::DroneArmControlRequest_<std::allocator<void> > DroneArmControlRequest;

typedef boost::shared_ptr< ::dji_osdk_ros::DroneArmControlRequest > DroneArmControlRequestPtr;
typedef boost::shared_ptr< ::dji_osdk_ros::DroneArmControlRequest const> DroneArmControlRequestConstPtr;

// constants requiring out of line definition

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dji_osdk_ros::DroneArmControlRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dji_osdk_ros::DroneArmControlRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::dji_osdk_ros::DroneArmControlRequest_<ContainerAllocator1> & lhs, const ::dji_osdk_ros::DroneArmControlRequest_<ContainerAllocator2> & rhs)
{
  return lhs.arm == rhs.arm;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::dji_osdk_ros::DroneArmControlRequest_<ContainerAllocator1> & lhs, const ::dji_osdk_ros::DroneArmControlRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace dji_osdk_ros

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::dji_osdk_ros::DroneArmControlRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dji_osdk_ros::DroneArmControlRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dji_osdk_ros::DroneArmControlRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dji_osdk_ros::DroneArmControlRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dji_osdk_ros::DroneArmControlRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dji_osdk_ros::DroneArmControlRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dji_osdk_ros::DroneArmControlRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4a248cc5dda0e00340ef213205619580";
  }

  static const char* value(const ::dji_osdk_ros::DroneArmControlRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4a248cc5dda0e003ULL;
  static const uint64_t static_value2 = 0x40ef213205619580ULL;
};

template<class ContainerAllocator>
struct DataType< ::dji_osdk_ros::DroneArmControlRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dji_osdk_ros/DroneArmControlRequest";
  }

  static const char* value(const ::dji_osdk_ros::DroneArmControlRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dji_osdk_ros::DroneArmControlRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#constant for arm\n"
"uint8 DISARM_COMMAND = 0\n"
"uint8 ARM_COMMAND    = 1\n"
"\n"
"#request\n"
"uint8 arm    # see constants\n"
;
  }

  static const char* value(const ::dji_osdk_ros::DroneArmControlRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dji_osdk_ros::DroneArmControlRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.arm);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DroneArmControlRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dji_osdk_ros::DroneArmControlRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dji_osdk_ros::DroneArmControlRequest_<ContainerAllocator>& v)
  {
    s << indent << "arm: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.arm);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DJI_OSDK_ROS_MESSAGE_DRONEARMCONTROLREQUEST_H
