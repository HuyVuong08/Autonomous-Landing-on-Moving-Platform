// Generated by gencpp from file dji_osdk_ros/StereoVGASubscriptionRequest.msg
// DO NOT EDIT!


#ifndef DJI_OSDK_ROS_MESSAGE_STEREOVGASUBSCRIPTIONREQUEST_H
#define DJI_OSDK_ROS_MESSAGE_STEREOVGASUBSCRIPTIONREQUEST_H


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
struct StereoVGASubscriptionRequest_
{
  typedef StereoVGASubscriptionRequest_<ContainerAllocator> Type;

  StereoVGASubscriptionRequest_()
    : vga_freq(0)
    , front_vga(0)
    , unsubscribe_vga(0)  {
    }
  StereoVGASubscriptionRequest_(const ContainerAllocator& _alloc)
    : vga_freq(0)
    , front_vga(0)
    , unsubscribe_vga(0)  {
  (void)_alloc;
    }



   typedef uint8_t _vga_freq_type;
  _vga_freq_type vga_freq;

   typedef uint8_t _front_vga_type;
  _front_vga_type front_vga;

   typedef uint8_t _unsubscribe_vga_type;
  _unsubscribe_vga_type unsubscribe_vga;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(VGA_20_HZ)
  #undef VGA_20_HZ
#endif
#if defined(_WIN32) && defined(VGA_10_HZ)
  #undef VGA_10_HZ
#endif

  enum {
    VGA_20_HZ = 0u,
    VGA_10_HZ = 1u,
  };


  typedef boost::shared_ptr< ::dji_osdk_ros::StereoVGASubscriptionRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dji_osdk_ros::StereoVGASubscriptionRequest_<ContainerAllocator> const> ConstPtr;

}; // struct StereoVGASubscriptionRequest_

typedef ::dji_osdk_ros::StereoVGASubscriptionRequest_<std::allocator<void> > StereoVGASubscriptionRequest;

typedef boost::shared_ptr< ::dji_osdk_ros::StereoVGASubscriptionRequest > StereoVGASubscriptionRequestPtr;
typedef boost::shared_ptr< ::dji_osdk_ros::StereoVGASubscriptionRequest const> StereoVGASubscriptionRequestConstPtr;

// constants requiring out of line definition

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dji_osdk_ros::StereoVGASubscriptionRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dji_osdk_ros::StereoVGASubscriptionRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::dji_osdk_ros::StereoVGASubscriptionRequest_<ContainerAllocator1> & lhs, const ::dji_osdk_ros::StereoVGASubscriptionRequest_<ContainerAllocator2> & rhs)
{
  return lhs.vga_freq == rhs.vga_freq &&
    lhs.front_vga == rhs.front_vga &&
    lhs.unsubscribe_vga == rhs.unsubscribe_vga;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::dji_osdk_ros::StereoVGASubscriptionRequest_<ContainerAllocator1> & lhs, const ::dji_osdk_ros::StereoVGASubscriptionRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace dji_osdk_ros

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::dji_osdk_ros::StereoVGASubscriptionRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dji_osdk_ros::StereoVGASubscriptionRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dji_osdk_ros::StereoVGASubscriptionRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dji_osdk_ros::StereoVGASubscriptionRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dji_osdk_ros::StereoVGASubscriptionRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dji_osdk_ros::StereoVGASubscriptionRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dji_osdk_ros::StereoVGASubscriptionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "42bba0e546d732e14c2e4218265204c4";
  }

  static const char* value(const ::dji_osdk_ros::StereoVGASubscriptionRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x42bba0e546d732e1ULL;
  static const uint64_t static_value2 = 0x4c2e4218265204c4ULL;
};

template<class ContainerAllocator>
struct DataType< ::dji_osdk_ros::StereoVGASubscriptionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dji_osdk_ros/StereoVGASubscriptionRequest";
  }

  static const char* value(const ::dji_osdk_ros::StereoVGASubscriptionRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dji_osdk_ros::StereoVGASubscriptionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#constant for vga image frequency\n"
"uint8 VGA_20_HZ = 0\n"
"uint8 VGA_10_HZ = 1\n"
"\n"
"# use above constants to config freq.\n"
"uint8 vga_freq\n"
"\n"
"# assign value to 1 to subscribe\n"
"uint8 front_vga\n"
"\n"
"# if unsubscribe_vga is 1,\n"
"# service will unsubscribe no matter what\n"
"uint8 unsubscribe_vga\n"
"\n"
;
  }

  static const char* value(const ::dji_osdk_ros::StereoVGASubscriptionRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dji_osdk_ros::StereoVGASubscriptionRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.vga_freq);
      stream.next(m.front_vga);
      stream.next(m.unsubscribe_vga);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct StereoVGASubscriptionRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dji_osdk_ros::StereoVGASubscriptionRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dji_osdk_ros::StereoVGASubscriptionRequest_<ContainerAllocator>& v)
  {
    s << indent << "vga_freq: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.vga_freq);
    s << indent << "front_vga: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.front_vga);
    s << indent << "unsubscribe_vga: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.unsubscribe_vga);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DJI_OSDK_ROS_MESSAGE_STEREOVGASUBSCRIPTIONREQUEST_H
