// Generated by gencpp from file gizmo_msgs/RecordBagfileGoal.msg
// DO NOT EDIT!


#ifndef GIZMO_MSGS_MESSAGE_RECORDBAGFILEGOAL_H
#define GIZMO_MSGS_MESSAGE_RECORDBAGFILEGOAL_H


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
struct RecordBagfileGoal_
{
  typedef RecordBagfileGoal_<ContainerAllocator> Type;

  RecordBagfileGoal_()
    : mode()  {
    }
  RecordBagfileGoal_(const ContainerAllocator& _alloc)
    : mode(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _mode_type;
  _mode_type mode;





  typedef boost::shared_ptr< ::gizmo_msgs::RecordBagfileGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::gizmo_msgs::RecordBagfileGoal_<ContainerAllocator> const> ConstPtr;

}; // struct RecordBagfileGoal_

typedef ::gizmo_msgs::RecordBagfileGoal_<std::allocator<void> > RecordBagfileGoal;

typedef boost::shared_ptr< ::gizmo_msgs::RecordBagfileGoal > RecordBagfileGoalPtr;
typedef boost::shared_ptr< ::gizmo_msgs::RecordBagfileGoal const> RecordBagfileGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::gizmo_msgs::RecordBagfileGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::gizmo_msgs::RecordBagfileGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::gizmo_msgs::RecordBagfileGoal_<ContainerAllocator1> & lhs, const ::gizmo_msgs::RecordBagfileGoal_<ContainerAllocator2> & rhs)
{
  return lhs.mode == rhs.mode;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::gizmo_msgs::RecordBagfileGoal_<ContainerAllocator1> & lhs, const ::gizmo_msgs::RecordBagfileGoal_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace gizmo_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::gizmo_msgs::RecordBagfileGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gizmo_msgs::RecordBagfileGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::gizmo_msgs::RecordBagfileGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::gizmo_msgs::RecordBagfileGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gizmo_msgs::RecordBagfileGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gizmo_msgs::RecordBagfileGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::gizmo_msgs::RecordBagfileGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e84dc3ad5dc323bb64f0aca01c2d1eef";
  }

  static const char* value(const ::gizmo_msgs::RecordBagfileGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe84dc3ad5dc323bbULL;
  static const uint64_t static_value2 = 0x64f0aca01c2d1eefULL;
};

template<class ContainerAllocator>
struct DataType< ::gizmo_msgs::RecordBagfileGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "gizmo_msgs/RecordBagfileGoal";
  }

  static const char* value(const ::gizmo_msgs::RecordBagfileGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::gizmo_msgs::RecordBagfileGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"# mode is 'mapping' or 'localization' or 'stopped'\n"
"string mode\n"
;
  }

  static const char* value(const ::gizmo_msgs::RecordBagfileGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::gizmo_msgs::RecordBagfileGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.mode);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RecordBagfileGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::gizmo_msgs::RecordBagfileGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::gizmo_msgs::RecordBagfileGoal_<ContainerAllocator>& v)
  {
    s << indent << "mode: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.mode);
  }
};

} // namespace message_operations
} // namespace ros

#endif // GIZMO_MSGS_MESSAGE_RECORDBAGFILEGOAL_H
