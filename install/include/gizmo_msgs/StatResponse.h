// Generated by gencpp from file gizmo_msgs/StatResponse.msg
// DO NOT EDIT!


#ifndef GIZMO_MSGS_MESSAGE_STATRESPONSE_H
#define GIZMO_MSGS_MESSAGE_STATRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace gizmo_msgs
{
template <class ContainerAllocator>
struct StatResponse_
{
  typedef StatResponse_<ContainerAllocator> Type;

  StatResponse_()
    : state()
    , direction()  {
    }
  StatResponse_(const ContainerAllocator& _alloc)
    : state(_alloc)
    , direction(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _state_type;
  _state_type state;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _direction_type;
  _direction_type direction;





  typedef boost::shared_ptr< ::gizmo_msgs::StatResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::gizmo_msgs::StatResponse_<ContainerAllocator> const> ConstPtr;

}; // struct StatResponse_

typedef ::gizmo_msgs::StatResponse_<std::allocator<void> > StatResponse;

typedef boost::shared_ptr< ::gizmo_msgs::StatResponse > StatResponsePtr;
typedef boost::shared_ptr< ::gizmo_msgs::StatResponse const> StatResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::gizmo_msgs::StatResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::gizmo_msgs::StatResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::gizmo_msgs::StatResponse_<ContainerAllocator1> & lhs, const ::gizmo_msgs::StatResponse_<ContainerAllocator2> & rhs)
{
  return lhs.state == rhs.state &&
    lhs.direction == rhs.direction;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::gizmo_msgs::StatResponse_<ContainerAllocator1> & lhs, const ::gizmo_msgs::StatResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace gizmo_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::gizmo_msgs::StatResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gizmo_msgs::StatResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::gizmo_msgs::StatResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::gizmo_msgs::StatResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gizmo_msgs::StatResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gizmo_msgs::StatResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::gizmo_msgs::StatResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6efbcf0c9bde4f3c542705ddc8687d07";
  }

  static const char* value(const ::gizmo_msgs::StatResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6efbcf0c9bde4f3cULL;
  static const uint64_t static_value2 = 0x542705ddc8687d07ULL;
};

template<class ContainerAllocator>
struct DataType< ::gizmo_msgs::StatResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "gizmo_msgs/StatResponse";
  }

  static const char* value(const ::gizmo_msgs::StatResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::gizmo_msgs::StatResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string state\n"
"string direction\n"
;
  }

  static const char* value(const ::gizmo_msgs::StatResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::gizmo_msgs::StatResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.state);
      stream.next(m.direction);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct StatResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::gizmo_msgs::StatResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::gizmo_msgs::StatResponse_<ContainerAllocator>& v)
  {
    s << indent << "state: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.state);
    s << indent << "direction: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.direction);
  }
};

} // namespace message_operations
} // namespace ros

#endif // GIZMO_MSGS_MESSAGE_STATRESPONSE_H
