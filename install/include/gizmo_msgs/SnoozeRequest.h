// Generated by gencpp from file gizmo_msgs/SnoozeRequest.msg
// DO NOT EDIT!


#ifndef GIZMO_MSGS_MESSAGE_SNOOZEREQUEST_H
#define GIZMO_MSGS_MESSAGE_SNOOZEREQUEST_H


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
struct SnoozeRequest_
{
  typedef SnoozeRequest_<ContainerAllocator> Type;

  SnoozeRequest_()
    {
    }
  SnoozeRequest_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::gizmo_msgs::SnoozeRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::gizmo_msgs::SnoozeRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SnoozeRequest_

typedef ::gizmo_msgs::SnoozeRequest_<std::allocator<void> > SnoozeRequest;

typedef boost::shared_ptr< ::gizmo_msgs::SnoozeRequest > SnoozeRequestPtr;
typedef boost::shared_ptr< ::gizmo_msgs::SnoozeRequest const> SnoozeRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::gizmo_msgs::SnoozeRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::gizmo_msgs::SnoozeRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace gizmo_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::gizmo_msgs::SnoozeRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gizmo_msgs::SnoozeRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::gizmo_msgs::SnoozeRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::gizmo_msgs::SnoozeRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gizmo_msgs::SnoozeRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gizmo_msgs::SnoozeRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::gizmo_msgs::SnoozeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::gizmo_msgs::SnoozeRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::gizmo_msgs::SnoozeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "gizmo_msgs/SnoozeRequest";
  }

  static const char* value(const ::gizmo_msgs::SnoozeRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::gizmo_msgs::SnoozeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
;
  }

  static const char* value(const ::gizmo_msgs::SnoozeRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::gizmo_msgs::SnoozeRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SnoozeRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::gizmo_msgs::SnoozeRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::gizmo_msgs::SnoozeRequest_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // GIZMO_MSGS_MESSAGE_SNOOZEREQUEST_H
