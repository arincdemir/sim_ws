// Generated by gencpp from file gizmo_msgs/PhotoCaptureResponse.msg
// DO NOT EDIT!


#ifndef GIZMO_MSGS_MESSAGE_PHOTOCAPTURERESPONSE_H
#define GIZMO_MSGS_MESSAGE_PHOTOCAPTURERESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <sensor_msgs/CompressedImage.h>

namespace gizmo_msgs
{
template <class ContainerAllocator>
struct PhotoCaptureResponse_
{
  typedef PhotoCaptureResponse_<ContainerAllocator> Type;

  PhotoCaptureResponse_()
    : image()  {
    }
  PhotoCaptureResponse_(const ContainerAllocator& _alloc)
    : image(_alloc)  {
  (void)_alloc;
    }



   typedef  ::sensor_msgs::CompressedImage_<ContainerAllocator>  _image_type;
  _image_type image;





  typedef boost::shared_ptr< ::gizmo_msgs::PhotoCaptureResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::gizmo_msgs::PhotoCaptureResponse_<ContainerAllocator> const> ConstPtr;

}; // struct PhotoCaptureResponse_

typedef ::gizmo_msgs::PhotoCaptureResponse_<std::allocator<void> > PhotoCaptureResponse;

typedef boost::shared_ptr< ::gizmo_msgs::PhotoCaptureResponse > PhotoCaptureResponsePtr;
typedef boost::shared_ptr< ::gizmo_msgs::PhotoCaptureResponse const> PhotoCaptureResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::gizmo_msgs::PhotoCaptureResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::gizmo_msgs::PhotoCaptureResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::gizmo_msgs::PhotoCaptureResponse_<ContainerAllocator1> & lhs, const ::gizmo_msgs::PhotoCaptureResponse_<ContainerAllocator2> & rhs)
{
  return lhs.image == rhs.image;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::gizmo_msgs::PhotoCaptureResponse_<ContainerAllocator1> & lhs, const ::gizmo_msgs::PhotoCaptureResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace gizmo_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::gizmo_msgs::PhotoCaptureResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gizmo_msgs::PhotoCaptureResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::gizmo_msgs::PhotoCaptureResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::gizmo_msgs::PhotoCaptureResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gizmo_msgs::PhotoCaptureResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gizmo_msgs::PhotoCaptureResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::gizmo_msgs::PhotoCaptureResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8c9a314071e9327ffee25d026549122a";
  }

  static const char* value(const ::gizmo_msgs::PhotoCaptureResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8c9a314071e9327fULL;
  static const uint64_t static_value2 = 0xfee25d026549122aULL;
};

template<class ContainerAllocator>
struct DataType< ::gizmo_msgs::PhotoCaptureResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "gizmo_msgs/PhotoCaptureResponse";
  }

  static const char* value(const ::gizmo_msgs::PhotoCaptureResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::gizmo_msgs::PhotoCaptureResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "sensor_msgs/CompressedImage image\n"
"\n"
"\n"
"================================================================================\n"
"MSG: sensor_msgs/CompressedImage\n"
"# This message contains a compressed image\n"
"\n"
"Header header        # Header timestamp should be acquisition time of image\n"
"                     # Header frame_id should be optical frame of camera\n"
"                     # origin of frame should be optical center of camera\n"
"                     # +x should point to the right in the image\n"
"                     # +y should point down in the image\n"
"                     # +z should point into to plane of the image\n"
"\n"
"string format        # Specifies the format of the data\n"
"                     #   Acceptable values:\n"
"                     #     jpeg, png\n"
"uint8[] data         # Compressed image buffer\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
;
  }

  static const char* value(const ::gizmo_msgs::PhotoCaptureResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::gizmo_msgs::PhotoCaptureResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.image);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PhotoCaptureResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::gizmo_msgs::PhotoCaptureResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::gizmo_msgs::PhotoCaptureResponse_<ContainerAllocator>& v)
  {
    s << indent << "image: ";
    s << std::endl;
    Printer< ::sensor_msgs::CompressedImage_<ContainerAllocator> >::stream(s, indent + "  ", v.image);
  }
};

} // namespace message_operations
} // namespace ros

#endif // GIZMO_MSGS_MESSAGE_PHOTOCAPTURERESPONSE_H
