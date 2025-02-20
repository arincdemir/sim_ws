// Generated by gencpp from file audio_msgs/Awake.msg
// DO NOT EDIT!


#ifndef AUDIO_MSGS_MESSAGE_AWAKE_H
#define AUDIO_MSGS_MESSAGE_AWAKE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Vector3.h>

namespace audio_msgs
{
template <class ContainerAllocator>
struct Awake_
{
  typedef Awake_<ContainerAllocator> Type;

  Awake_()
    : direction()
    , relative_angle(0)
    , score(0.0)  {
    }
  Awake_(const ContainerAllocator& _alloc)
    : direction(_alloc)
    , relative_angle(0)
    , score(0.0)  {
  (void)_alloc;
    }



   typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _direction_type;
  _direction_type direction;

   typedef uint16_t _relative_angle_type;
  _relative_angle_type relative_angle;

   typedef float _score_type;
  _score_type score;





  typedef boost::shared_ptr< ::audio_msgs::Awake_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::audio_msgs::Awake_<ContainerAllocator> const> ConstPtr;

}; // struct Awake_

typedef ::audio_msgs::Awake_<std::allocator<void> > Awake;

typedef boost::shared_ptr< ::audio_msgs::Awake > AwakePtr;
typedef boost::shared_ptr< ::audio_msgs::Awake const> AwakeConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::audio_msgs::Awake_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::audio_msgs::Awake_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::audio_msgs::Awake_<ContainerAllocator1> & lhs, const ::audio_msgs::Awake_<ContainerAllocator2> & rhs)
{
  return lhs.direction == rhs.direction &&
    lhs.relative_angle == rhs.relative_angle &&
    lhs.score == rhs.score;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::audio_msgs::Awake_<ContainerAllocator1> & lhs, const ::audio_msgs::Awake_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace audio_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::audio_msgs::Awake_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::audio_msgs::Awake_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::audio_msgs::Awake_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::audio_msgs::Awake_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::audio_msgs::Awake_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::audio_msgs::Awake_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::audio_msgs::Awake_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b67c4c1f2cbb59c79b9f56d85e60a268";
  }

  static const char* value(const ::audio_msgs::Awake_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb67c4c1f2cbb59c7ULL;
  static const uint64_t static_value2 = 0x9b9f56d85e60a268ULL;
};

template<class ContainerAllocator>
struct DataType< ::audio_msgs::Awake_<ContainerAllocator> >
{
  static const char* value()
  {
    return "audio_msgs/Awake";
  }

  static const char* value(const ::audio_msgs::Awake_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::audio_msgs::Awake_<ContainerAllocator> >
{
  static const char* value()
  {
    return "geometry_msgs/Vector3 direction\n"
"uint16 relative_angle\n"
"float32 score\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Vector3\n"
"# This represents a vector in free space. \n"
"# It is only meant to represent a direction. Therefore, it does not\n"
"# make sense to apply a translation to it (e.g., when applying a \n"
"# generic rigid transformation to a Vector3, tf2 will only apply the\n"
"# rotation). If you want your data to be translatable too, use the\n"
"# geometry_msgs/Point message instead.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
;
  }

  static const char* value(const ::audio_msgs::Awake_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::audio_msgs::Awake_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.direction);
      stream.next(m.relative_angle);
      stream.next(m.score);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Awake_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::audio_msgs::Awake_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::audio_msgs::Awake_<ContainerAllocator>& v)
  {
    s << indent << "direction: ";
    s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.direction);
    s << indent << "relative_angle: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.relative_angle);
    s << indent << "score: ";
    Printer<float>::stream(s, indent + "  ", v.score);
  }
};

} // namespace message_operations
} // namespace ros

#endif // AUDIO_MSGS_MESSAGE_AWAKE_H
