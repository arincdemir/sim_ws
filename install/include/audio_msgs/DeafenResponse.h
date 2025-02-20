// Generated by gencpp from file audio_msgs/DeafenResponse.msg
// DO NOT EDIT!


#ifndef AUDIO_MSGS_MESSAGE_DEAFENRESPONSE_H
#define AUDIO_MSGS_MESSAGE_DEAFENRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace audio_msgs
{
template <class ContainerAllocator>
struct DeafenResponse_
{
  typedef DeafenResponse_<ContainerAllocator> Type;

  DeafenResponse_()
    : state()  {
    }
  DeafenResponse_(const ContainerAllocator& _alloc)
    : state(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _state_type;
  _state_type state;





  typedef boost::shared_ptr< ::audio_msgs::DeafenResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::audio_msgs::DeafenResponse_<ContainerAllocator> const> ConstPtr;

}; // struct DeafenResponse_

typedef ::audio_msgs::DeafenResponse_<std::allocator<void> > DeafenResponse;

typedef boost::shared_ptr< ::audio_msgs::DeafenResponse > DeafenResponsePtr;
typedef boost::shared_ptr< ::audio_msgs::DeafenResponse const> DeafenResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::audio_msgs::DeafenResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::audio_msgs::DeafenResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::audio_msgs::DeafenResponse_<ContainerAllocator1> & lhs, const ::audio_msgs::DeafenResponse_<ContainerAllocator2> & rhs)
{
  return lhs.state == rhs.state;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::audio_msgs::DeafenResponse_<ContainerAllocator1> & lhs, const ::audio_msgs::DeafenResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace audio_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::audio_msgs::DeafenResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::audio_msgs::DeafenResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::audio_msgs::DeafenResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::audio_msgs::DeafenResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::audio_msgs::DeafenResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::audio_msgs::DeafenResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::audio_msgs::DeafenResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "af6d3a99f0fbeb66d3248fa4b3e675fb";
  }

  static const char* value(const ::audio_msgs::DeafenResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xaf6d3a99f0fbeb66ULL;
  static const uint64_t static_value2 = 0xd3248fa4b3e675fbULL;
};

template<class ContainerAllocator>
struct DataType< ::audio_msgs::DeafenResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "audio_msgs/DeafenResponse";
  }

  static const char* value(const ::audio_msgs::DeafenResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::audio_msgs::DeafenResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string state\n"
"\n"
;
  }

  static const char* value(const ::audio_msgs::DeafenResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::audio_msgs::DeafenResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.state);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DeafenResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::audio_msgs::DeafenResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::audio_msgs::DeafenResponse_<ContainerAllocator>& v)
  {
    s << indent << "state: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.state);
  }
};

} // namespace message_operations
} // namespace ros

#endif // AUDIO_MSGS_MESSAGE_DEAFENRESPONSE_H
