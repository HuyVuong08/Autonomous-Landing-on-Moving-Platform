// Generated by gencpp from file tf_velocity_estimator/PosesAndVelocities.msg
// DO NOT EDIT!


#ifndef TF_VELOCITY_ESTIMATOR_MESSAGE_POSESANDVELOCITIES_H
#define TF_VELOCITY_ESTIMATOR_MESSAGE_POSESANDVELOCITIES_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/PoseStamped.h>
#include <tf_velocity_estimator/Velocity.h>

namespace tf_velocity_estimator
{
template <class ContainerAllocator>
struct PosesAndVelocities_
{
  typedef PosesAndVelocities_<ContainerAllocator> Type;

  PosesAndVelocities_()
    : latest_poses()
    , latest_velocities()  {
    }
  PosesAndVelocities_(const ContainerAllocator& _alloc)
    : latest_poses(_alloc)
    , latest_velocities(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::geometry_msgs::PoseStamped_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::geometry_msgs::PoseStamped_<ContainerAllocator> >::other >  _latest_poses_type;
  _latest_poses_type latest_poses;

   typedef std::vector< ::tf_velocity_estimator::Velocity_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::tf_velocity_estimator::Velocity_<ContainerAllocator> >::other >  _latest_velocities_type;
  _latest_velocities_type latest_velocities;





  typedef boost::shared_ptr< ::tf_velocity_estimator::PosesAndVelocities_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::tf_velocity_estimator::PosesAndVelocities_<ContainerAllocator> const> ConstPtr;

}; // struct PosesAndVelocities_

typedef ::tf_velocity_estimator::PosesAndVelocities_<std::allocator<void> > PosesAndVelocities;

typedef boost::shared_ptr< ::tf_velocity_estimator::PosesAndVelocities > PosesAndVelocitiesPtr;
typedef boost::shared_ptr< ::tf_velocity_estimator::PosesAndVelocities const> PosesAndVelocitiesConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::tf_velocity_estimator::PosesAndVelocities_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::tf_velocity_estimator::PosesAndVelocities_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace tf_velocity_estimator

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'tf_velocity_estimator': ['/home/huy/Autonomous-Landing-on-Moving-Platform/catkin_ws/src/tf_velocity_estimator/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::tf_velocity_estimator::PosesAndVelocities_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tf_velocity_estimator::PosesAndVelocities_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tf_velocity_estimator::PosesAndVelocities_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tf_velocity_estimator::PosesAndVelocities_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tf_velocity_estimator::PosesAndVelocities_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tf_velocity_estimator::PosesAndVelocities_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::tf_velocity_estimator::PosesAndVelocities_<ContainerAllocator> >
{
  static const char* value()
  {
    return "16dbd35e7e0840434e00d0a0200d9f83";
  }

  static const char* value(const ::tf_velocity_estimator::PosesAndVelocities_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x16dbd35e7e084043ULL;
  static const uint64_t static_value2 = 0x4e00d0a0200d9f83ULL;
};

template<class ContainerAllocator>
struct DataType< ::tf_velocity_estimator::PosesAndVelocities_<ContainerAllocator> >
{
  static const char* value()
  {
    return "tf_velocity_estimator/PosesAndVelocities";
  }

  static const char* value(const ::tf_velocity_estimator::PosesAndVelocities_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::tf_velocity_estimator::PosesAndVelocities_<ContainerAllocator> >
{
  static const char* value()
  {
    return "geometry_msgs/PoseStamped[] latest_poses\n\
Velocity[] latest_velocities\n\
================================================================================\n\
MSG: geometry_msgs/PoseStamped\n\
# A Pose with reference coordinate frame and timestamp\n\
Header header\n\
Pose pose\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Pose\n\
# A representation of pose in free space, composed of position and orientation. \n\
Point position\n\
Quaternion orientation\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Quaternion\n\
# This represents an orientation in free space in quaternion form.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
float64 w\n\
\n\
================================================================================\n\
MSG: tf_velocity_estimator/Velocity\n\
float32 vx\n\
float32 vy\n\
float32 vz\n\
";
  }

  static const char* value(const ::tf_velocity_estimator::PosesAndVelocities_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::tf_velocity_estimator::PosesAndVelocities_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.latest_poses);
      stream.next(m.latest_velocities);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PosesAndVelocities_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::tf_velocity_estimator::PosesAndVelocities_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::tf_velocity_estimator::PosesAndVelocities_<ContainerAllocator>& v)
  {
    s << indent << "latest_poses[]" << std::endl;
    for (size_t i = 0; i < v.latest_poses.size(); ++i)
    {
      s << indent << "  latest_poses[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::geometry_msgs::PoseStamped_<ContainerAllocator> >::stream(s, indent + "    ", v.latest_poses[i]);
    }
    s << indent << "latest_velocities[]" << std::endl;
    for (size_t i = 0; i < v.latest_velocities.size(); ++i)
    {
      s << indent << "  latest_velocities[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::tf_velocity_estimator::Velocity_<ContainerAllocator> >::stream(s, indent + "    ", v.latest_velocities[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // TF_VELOCITY_ESTIMATOR_MESSAGE_POSESANDVELOCITIES_H
