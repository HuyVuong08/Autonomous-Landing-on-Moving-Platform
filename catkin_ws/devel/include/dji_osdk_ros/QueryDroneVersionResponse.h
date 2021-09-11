// Generated by gencpp from file dji_osdk_ros/QueryDroneVersionResponse.msg
// DO NOT EDIT!


#ifndef DJI_OSDK_ROS_MESSAGE_QUERYDRONEVERSIONRESPONSE_H
#define DJI_OSDK_ROS_MESSAGE_QUERYDRONEVERSIONRESPONSE_H


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
struct QueryDroneVersionResponse_
{
  typedef QueryDroneVersionResponse_<ContainerAllocator> Type;

  QueryDroneVersionResponse_()
    : version(0)
    , hardware()  {
    }
  QueryDroneVersionResponse_(const ContainerAllocator& _alloc)
    : version(0)
    , hardware(_alloc)  {
  (void)_alloc;
    }



   typedef uint32_t _version_type;
  _version_type version;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _hardware_type;
  _hardware_type hardware;





  typedef boost::shared_ptr< ::dji_osdk_ros::QueryDroneVersionResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dji_osdk_ros::QueryDroneVersionResponse_<ContainerAllocator> const> ConstPtr;

}; // struct QueryDroneVersionResponse_

typedef ::dji_osdk_ros::QueryDroneVersionResponse_<std::allocator<void> > QueryDroneVersionResponse;

typedef boost::shared_ptr< ::dji_osdk_ros::QueryDroneVersionResponse > QueryDroneVersionResponsePtr;
typedef boost::shared_ptr< ::dji_osdk_ros::QueryDroneVersionResponse const> QueryDroneVersionResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dji_osdk_ros::QueryDroneVersionResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dji_osdk_ros::QueryDroneVersionResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::dji_osdk_ros::QueryDroneVersionResponse_<ContainerAllocator1> & lhs, const ::dji_osdk_ros::QueryDroneVersionResponse_<ContainerAllocator2> & rhs)
{
  return lhs.version == rhs.version &&
    lhs.hardware == rhs.hardware;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::dji_osdk_ros::QueryDroneVersionResponse_<ContainerAllocator1> & lhs, const ::dji_osdk_ros::QueryDroneVersionResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace dji_osdk_ros

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::dji_osdk_ros::QueryDroneVersionResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dji_osdk_ros::QueryDroneVersionResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dji_osdk_ros::QueryDroneVersionResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dji_osdk_ros::QueryDroneVersionResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dji_osdk_ros::QueryDroneVersionResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dji_osdk_ros::QueryDroneVersionResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dji_osdk_ros::QueryDroneVersionResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "89b6e8d274e31334cc3a372757607be2";
  }

  static const char* value(const ::dji_osdk_ros::QueryDroneVersionResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x89b6e8d274e31334ULL;
  static const uint64_t static_value2 = 0xcc3a372757607be2ULL;
};

template<class ContainerAllocator>
struct DataType< ::dji_osdk_ros::QueryDroneVersionResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dji_osdk_ros/QueryDroneVersionResponse";
  }

  static const char* value(const ::dji_osdk_ros::QueryDroneVersionResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dji_osdk_ros::QueryDroneVersionResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint32 version\n"
"string hardware\n"
;
  }

  static const char* value(const ::dji_osdk_ros::QueryDroneVersionResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dji_osdk_ros::QueryDroneVersionResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.version);
      stream.next(m.hardware);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct QueryDroneVersionResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dji_osdk_ros::QueryDroneVersionResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dji_osdk_ros::QueryDroneVersionResponse_<ContainerAllocator>& v)
  {
    s << indent << "version: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.version);
    s << indent << "hardware: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.hardware);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DJI_OSDK_ROS_MESSAGE_QUERYDRONEVERSIONRESPONSE_H
