// Generated by gencpp from file audio_msgs/GetFieldRequest.msg
// DO NOT EDIT!


#ifndef AUDIO_MSGS_MESSAGE_GETFIELDREQUEST_H
#define AUDIO_MSGS_MESSAGE_GETFIELDREQUEST_H


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
struct GetFieldRequest_
{
  typedef GetFieldRequest_<ContainerAllocator> Type;

  GetFieldRequest_()
    : name()  {
    }
  GetFieldRequest_(const ContainerAllocator& _alloc)
    : name(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _name_type;
  _name_type name;





  typedef boost::shared_ptr< ::audio_msgs::GetFieldRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::audio_msgs::GetFieldRequest_<ContainerAllocator> const> ConstPtr;

}; // struct GetFieldRequest_

typedef ::audio_msgs::GetFieldRequest_<std::allocator<void> > GetFieldRequest;

typedef boost::shared_ptr< ::audio_msgs::GetFieldRequest > GetFieldRequestPtr;
typedef boost::shared_ptr< ::audio_msgs::GetFieldRequest const> GetFieldRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::audio_msgs::GetFieldRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::audio_msgs::GetFieldRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::audio_msgs::GetFieldRequest_<ContainerAllocator1> & lhs, const ::audio_msgs::GetFieldRequest_<ContainerAllocator2> & rhs)
{
  return lhs.name == rhs.name;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::audio_msgs::GetFieldRequest_<ContainerAllocator1> & lhs, const ::audio_msgs::GetFieldRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace audio_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::audio_msgs::GetFieldRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::audio_msgs::GetFieldRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::audio_msgs::GetFieldRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::audio_msgs::GetFieldRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::audio_msgs::GetFieldRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::audio_msgs::GetFieldRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::audio_msgs::GetFieldRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c1f3d28f1b044c871e6eff2e9fc3c667";
  }

  static const char* value(const ::audio_msgs::GetFieldRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc1f3d28f1b044c87ULL;
  static const uint64_t static_value2 = 0x1e6eff2e9fc3c667ULL;
};

template<class ContainerAllocator>
struct DataType< ::audio_msgs::GetFieldRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "audio_msgs/GetFieldRequest";
  }

  static const char* value(const ::audio_msgs::GetFieldRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::audio_msgs::GetFieldRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string name\n"
;
  }

  static const char* value(const ::audio_msgs::GetFieldRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::audio_msgs::GetFieldRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.name);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetFieldRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::audio_msgs::GetFieldRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::audio_msgs::GetFieldRequest_<ContainerAllocator>& v)
  {
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.name);
  }
};

} // namespace message_operations
} // namespace ros

#endif // AUDIO_MSGS_MESSAGE_GETFIELDREQUEST_H
