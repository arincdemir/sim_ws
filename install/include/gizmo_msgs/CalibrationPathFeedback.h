// Generated by gencpp from file gizmo_msgs/CalibrationPathFeedback.msg
// DO NOT EDIT!


#ifndef GIZMO_MSGS_MESSAGE_CALIBRATIONPATHFEEDBACK_H
#define GIZMO_MSGS_MESSAGE_CALIBRATIONPATHFEEDBACK_H


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
struct CalibrationPathFeedback_
{
  typedef CalibrationPathFeedback_<ContainerAllocator> Type;

  CalibrationPathFeedback_()
    {
    }
  CalibrationPathFeedback_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::gizmo_msgs::CalibrationPathFeedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::gizmo_msgs::CalibrationPathFeedback_<ContainerAllocator> const> ConstPtr;

}; // struct CalibrationPathFeedback_

typedef ::gizmo_msgs::CalibrationPathFeedback_<std::allocator<void> > CalibrationPathFeedback;

typedef boost::shared_ptr< ::gizmo_msgs::CalibrationPathFeedback > CalibrationPathFeedbackPtr;
typedef boost::shared_ptr< ::gizmo_msgs::CalibrationPathFeedback const> CalibrationPathFeedbackConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::gizmo_msgs::CalibrationPathFeedback_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::gizmo_msgs::CalibrationPathFeedback_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace gizmo_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::gizmo_msgs::CalibrationPathFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gizmo_msgs::CalibrationPathFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::gizmo_msgs::CalibrationPathFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::gizmo_msgs::CalibrationPathFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gizmo_msgs::CalibrationPathFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gizmo_msgs::CalibrationPathFeedback_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::gizmo_msgs::CalibrationPathFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::gizmo_msgs::CalibrationPathFeedback_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::gizmo_msgs::CalibrationPathFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "gizmo_msgs/CalibrationPathFeedback";
  }

  static const char* value(const ::gizmo_msgs::CalibrationPathFeedback_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::gizmo_msgs::CalibrationPathFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"\n"
"\n"
"\n"
;
  }

  static const char* value(const ::gizmo_msgs::CalibrationPathFeedback_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::gizmo_msgs::CalibrationPathFeedback_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CalibrationPathFeedback_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::gizmo_msgs::CalibrationPathFeedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::gizmo_msgs::CalibrationPathFeedback_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // GIZMO_MSGS_MESSAGE_CALIBRATIONPATHFEEDBACK_H
