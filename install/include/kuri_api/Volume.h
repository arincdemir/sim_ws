// Generated by gencpp from file kuri_api/Volume.msg
// DO NOT EDIT!


#ifndef KURI_API_MESSAGE_VOLUME_H
#define KURI_API_MESSAGE_VOLUME_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace kuri_api
{
template <class ContainerAllocator>
struct Volume_
{
  typedef Volume_<ContainerAllocator> Type;

  Volume_()
    : level(0)
    , is_relative(false)
    , mute(false)
    , unmute(false)  {
    }
  Volume_(const ContainerAllocator& _alloc)
    : level(0)
    , is_relative(false)
    , mute(false)
    , unmute(false)  {
  (void)_alloc;
    }



   typedef int16_t _level_type;
  _level_type level;

   typedef uint8_t _is_relative_type;
  _is_relative_type is_relative;

   typedef uint8_t _mute_type;
  _mute_type mute;

   typedef uint8_t _unmute_type;
  _unmute_type unmute;





  typedef boost::shared_ptr< ::kuri_api::Volume_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kuri_api::Volume_<ContainerAllocator> const> ConstPtr;

}; // struct Volume_

typedef ::kuri_api::Volume_<std::allocator<void> > Volume;

typedef boost::shared_ptr< ::kuri_api::Volume > VolumePtr;
typedef boost::shared_ptr< ::kuri_api::Volume const> VolumeConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kuri_api::Volume_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kuri_api::Volume_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::kuri_api::Volume_<ContainerAllocator1> & lhs, const ::kuri_api::Volume_<ContainerAllocator2> & rhs)
{
  return lhs.level == rhs.level &&
    lhs.is_relative == rhs.is_relative &&
    lhs.mute == rhs.mute &&
    lhs.unmute == rhs.unmute;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::kuri_api::Volume_<ContainerAllocator1> & lhs, const ::kuri_api::Volume_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace kuri_api

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::kuri_api::Volume_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kuri_api::Volume_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kuri_api::Volume_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kuri_api::Volume_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kuri_api::Volume_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kuri_api::Volume_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kuri_api::Volume_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c2006af99be3d44213e306b5de119dfc";
  }

  static const char* value(const ::kuri_api::Volume_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc2006af99be3d442ULL;
  static const uint64_t static_value2 = 0x13e306b5de119dfcULL;
};

template<class ContainerAllocator>
struct DataType< ::kuri_api::Volume_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kuri_api/Volume";
  }

  static const char* value(const ::kuri_api::Volume_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kuri_api::Volume_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Volume level\n"
"# If is_relative is True, this adds to the current volume level\n"
"# If is_relative is False, this sets the current volume level\n"
"# Note: level is on the range [0:100], and will be clapmed appropriately\n"
"# upon receipt of this message\n"
"int16 level\n"
"\n"
"# Whether the level should be added to the current level or set absolutely\n"
"bool is_relative\n"
"\n"
"# Mute and unmute\n"
"# If either of these are set to true, the above values will not be used\n"
"# Muting stores the volume level and sets the level to 0\n"
"# Unmuting restores the volume level (or uses the default volume if no level\n"
"# has been stored)\n"
"bool mute\n"
"bool unmute\n"
;
  }

  static const char* value(const ::kuri_api::Volume_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kuri_api::Volume_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.level);
      stream.next(m.is_relative);
      stream.next(m.mute);
      stream.next(m.unmute);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Volume_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kuri_api::Volume_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::kuri_api::Volume_<ContainerAllocator>& v)
  {
    s << indent << "level: ";
    Printer<int16_t>::stream(s, indent + "  ", v.level);
    s << indent << "is_relative: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.is_relative);
    s << indent << "mute: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.mute);
    s << indent << "unmute: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.unmute);
  }
};

} // namespace message_operations
} // namespace ros

#endif // KURI_API_MESSAGE_VOLUME_H
