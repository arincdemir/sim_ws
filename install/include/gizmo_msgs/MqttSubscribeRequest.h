// Generated by gencpp from file gizmo_msgs/MqttSubscribeRequest.msg
// DO NOT EDIT!


#ifndef GIZMO_MSGS_MESSAGE_MQTTSUBSCRIBEREQUEST_H
#define GIZMO_MSGS_MESSAGE_MQTTSUBSCRIBEREQUEST_H


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
struct MqttSubscribeRequest_
{
  typedef MqttSubscribeRequest_<ContainerAllocator> Type;

  MqttSubscribeRequest_()
    : topic()  {
    }
  MqttSubscribeRequest_(const ContainerAllocator& _alloc)
    : topic(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _topic_type;
  _topic_type topic;





  typedef boost::shared_ptr< ::gizmo_msgs::MqttSubscribeRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::gizmo_msgs::MqttSubscribeRequest_<ContainerAllocator> const> ConstPtr;

}; // struct MqttSubscribeRequest_

typedef ::gizmo_msgs::MqttSubscribeRequest_<std::allocator<void> > MqttSubscribeRequest;

typedef boost::shared_ptr< ::gizmo_msgs::MqttSubscribeRequest > MqttSubscribeRequestPtr;
typedef boost::shared_ptr< ::gizmo_msgs::MqttSubscribeRequest const> MqttSubscribeRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::gizmo_msgs::MqttSubscribeRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::gizmo_msgs::MqttSubscribeRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::gizmo_msgs::MqttSubscribeRequest_<ContainerAllocator1> & lhs, const ::gizmo_msgs::MqttSubscribeRequest_<ContainerAllocator2> & rhs)
{
  return lhs.topic == rhs.topic;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::gizmo_msgs::MqttSubscribeRequest_<ContainerAllocator1> & lhs, const ::gizmo_msgs::MqttSubscribeRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace gizmo_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::gizmo_msgs::MqttSubscribeRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gizmo_msgs::MqttSubscribeRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::gizmo_msgs::MqttSubscribeRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::gizmo_msgs::MqttSubscribeRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gizmo_msgs::MqttSubscribeRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gizmo_msgs::MqttSubscribeRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::gizmo_msgs::MqttSubscribeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d8f94bae31b356b24d0427f80426d0c3";
  }

  static const char* value(const ::gizmo_msgs::MqttSubscribeRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd8f94bae31b356b2ULL;
  static const uint64_t static_value2 = 0x4d0427f80426d0c3ULL;
};

template<class ContainerAllocator>
struct DataType< ::gizmo_msgs::MqttSubscribeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "gizmo_msgs/MqttSubscribeRequest";
  }

  static const char* value(const ::gizmo_msgs::MqttSubscribeRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::gizmo_msgs::MqttSubscribeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string topic\n"
;
  }

  static const char* value(const ::gizmo_msgs::MqttSubscribeRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::gizmo_msgs::MqttSubscribeRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.topic);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MqttSubscribeRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::gizmo_msgs::MqttSubscribeRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::gizmo_msgs::MqttSubscribeRequest_<ContainerAllocator>& v)
  {
    s << indent << "topic: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.topic);
  }
};

} // namespace message_operations
} // namespace ros

#endif // GIZMO_MSGS_MESSAGE_MQTTSUBSCRIBEREQUEST_H
