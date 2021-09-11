// Generated by gencpp from file dji_osdk_ros/FCTimeInUTC.msg
// DO NOT EDIT!


#ifndef DJI_OSDK_ROS_MESSAGE_FCTIMEINUTC_H
#define DJI_OSDK_ROS_MESSAGE_FCTIMEINUTC_H


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
struct FCTimeInUTC_
{
  typedef FCTimeInUTC_<ContainerAllocator> Type;

  FCTimeInUTC_()
    : stamp()
    , fc_timestamp_us(0)
    , fc_utc_yymmdd(0)
    , fc_utc_hhmmss(0)  {
    }
  FCTimeInUTC_(const ContainerAllocator& _alloc)
    : stamp()
    , fc_timestamp_us(0)
    , fc_utc_yymmdd(0)
    , fc_utc_hhmmss(0)  {
  (void)_alloc;
    }



   typedef ros::Time _stamp_type;
  _stamp_type stamp;

   typedef uint32_t _fc_timestamp_us_type;
  _fc_timestamp_us_type fc_timestamp_us;

   typedef uint32_t _fc_utc_yymmdd_type;
  _fc_utc_yymmdd_type fc_utc_yymmdd;

   typedef uint32_t _fc_utc_hhmmss_type;
  _fc_utc_hhmmss_type fc_utc_hhmmss;





  typedef boost::shared_ptr< ::dji_osdk_ros::FCTimeInUTC_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dji_osdk_ros::FCTimeInUTC_<ContainerAllocator> const> ConstPtr;

}; // struct FCTimeInUTC_

typedef ::dji_osdk_ros::FCTimeInUTC_<std::allocator<void> > FCTimeInUTC;

typedef boost::shared_ptr< ::dji_osdk_ros::FCTimeInUTC > FCTimeInUTCPtr;
typedef boost::shared_ptr< ::dji_osdk_ros::FCTimeInUTC const> FCTimeInUTCConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dji_osdk_ros::FCTimeInUTC_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dji_osdk_ros::FCTimeInUTC_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::dji_osdk_ros::FCTimeInUTC_<ContainerAllocator1> & lhs, const ::dji_osdk_ros::FCTimeInUTC_<ContainerAllocator2> & rhs)
{
  return lhs.stamp == rhs.stamp &&
    lhs.fc_timestamp_us == rhs.fc_timestamp_us &&
    lhs.fc_utc_yymmdd == rhs.fc_utc_yymmdd &&
    lhs.fc_utc_hhmmss == rhs.fc_utc_hhmmss;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::dji_osdk_ros::FCTimeInUTC_<ContainerAllocator1> & lhs, const ::dji_osdk_ros::FCTimeInUTC_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace dji_osdk_ros

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::dji_osdk_ros::FCTimeInUTC_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dji_osdk_ros::FCTimeInUTC_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dji_osdk_ros::FCTimeInUTC_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dji_osdk_ros::FCTimeInUTC_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dji_osdk_ros::FCTimeInUTC_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dji_osdk_ros::FCTimeInUTC_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dji_osdk_ros::FCTimeInUTC_<ContainerAllocator> >
{
  static const char* value()
  {
    return "46bad377c3e8bc271c70f3dffa21d6ab";
  }

  static const char* value(const ::dji_osdk_ros::FCTimeInUTC_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x46bad377c3e8bc27ULL;
  static const uint64_t static_value2 = 0x1c70f3dffa21d6abULL;
};

template<class ContainerAllocator>
struct DataType< ::dji_osdk_ros::FCTimeInUTC_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dji_osdk_ros/FCTimeInUTC";
  }

  static const char* value(const ::dji_osdk_ros::FCTimeInUTC_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dji_osdk_ros::FCTimeInUTC_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# the time stamp of getting this data in the ROS system\n"
"time stamp\n"
"\n"
"# the time stamp in FC\n"
"uint32 fc_timestamp_us\n"
"uint32 fc_utc_yymmdd\n"
"uint32 fc_utc_hhmmss\n"
;
  }

  static const char* value(const ::dji_osdk_ros::FCTimeInUTC_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dji_osdk_ros::FCTimeInUTC_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.stamp);
      stream.next(m.fc_timestamp_us);
      stream.next(m.fc_utc_yymmdd);
      stream.next(m.fc_utc_hhmmss);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct FCTimeInUTC_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dji_osdk_ros::FCTimeInUTC_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dji_osdk_ros::FCTimeInUTC_<ContainerAllocator>& v)
  {
    s << indent << "stamp: ";
    Printer<ros::Time>::stream(s, indent + "  ", v.stamp);
    s << indent << "fc_timestamp_us: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.fc_timestamp_us);
    s << indent << "fc_utc_yymmdd: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.fc_utc_yymmdd);
    s << indent << "fc_utc_hhmmss: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.fc_utc_hhmmss);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DJI_OSDK_ROS_MESSAGE_FCTIMEINUTC_H
