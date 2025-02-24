// Generated by gencpp from file vision_msgs/FrameResults.msg
// DO NOT EDIT!


#ifndef VISION_MSGS_MESSAGE_FRAMERESULTS_H
#define VISION_MSGS_MESSAGE_FRAMERESULTS_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <vision_msgs/FaceArray.h>
#include <vision_msgs/ImageClustering.h>
#include <vision_msgs/DetectedObjects.h>
#include <vision_msgs/ObjectFeatures.h>
#include <vision_msgs/ImageQuality.h>

namespace vision_msgs
{
template <class ContainerAllocator>
struct FrameResults_
{
  typedef FrameResults_<ContainerAllocator> Type;

  FrameResults_()
    : header()
    , faces()
    , clustering()
    , objects()
    , features()
    , quality()
    , modules()  {
    }
  FrameResults_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , faces(_alloc)
    , clustering(_alloc)
    , objects(_alloc)
    , features(_alloc)
    , quality(_alloc)
    , modules(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::vision_msgs::FaceArray_<ContainerAllocator>  _faces_type;
  _faces_type faces;

   typedef  ::vision_msgs::ImageClustering_<ContainerAllocator>  _clustering_type;
  _clustering_type clustering;

   typedef  ::vision_msgs::DetectedObjects_<ContainerAllocator>  _objects_type;
  _objects_type objects;

   typedef  ::vision_msgs::ObjectFeatures_<ContainerAllocator>  _features_type;
  _features_type features;

   typedef  ::vision_msgs::ImageQuality_<ContainerAllocator>  _quality_type;
  _quality_type quality;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>> _modules_type;
  _modules_type modules;





  typedef boost::shared_ptr< ::vision_msgs::FrameResults_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::vision_msgs::FrameResults_<ContainerAllocator> const> ConstPtr;

}; // struct FrameResults_

typedef ::vision_msgs::FrameResults_<std::allocator<void> > FrameResults;

typedef boost::shared_ptr< ::vision_msgs::FrameResults > FrameResultsPtr;
typedef boost::shared_ptr< ::vision_msgs::FrameResults const> FrameResultsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::vision_msgs::FrameResults_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::vision_msgs::FrameResults_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::vision_msgs::FrameResults_<ContainerAllocator1> & lhs, const ::vision_msgs::FrameResults_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.faces == rhs.faces &&
    lhs.clustering == rhs.clustering &&
    lhs.objects == rhs.objects &&
    lhs.features == rhs.features &&
    lhs.quality == rhs.quality &&
    lhs.modules == rhs.modules;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::vision_msgs::FrameResults_<ContainerAllocator1> & lhs, const ::vision_msgs::FrameResults_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace vision_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::vision_msgs::FrameResults_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::vision_msgs::FrameResults_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::vision_msgs::FrameResults_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::vision_msgs::FrameResults_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::vision_msgs::FrameResults_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::vision_msgs::FrameResults_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::vision_msgs::FrameResults_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6ddc9f5aeba4eed50c0dbd8bc8468f0f";
  }

  static const char* value(const ::vision_msgs::FrameResults_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6ddc9f5aeba4eed5ULL;
  static const uint64_t static_value2 = 0x0c0dbd8bc8468f0fULL;
};

template<class ContainerAllocator>
struct DataType< ::vision_msgs::FrameResults_<ContainerAllocator> >
{
  static const char* value()
  {
    return "vision_msgs/FrameResults";
  }

  static const char* value(const ::vision_msgs::FrameResults_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::vision_msgs::FrameResults_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"FaceArray faces\n"
"ImageClustering clustering\n"
"DetectedObjects objects\n"
"ObjectFeatures features\n"
"ImageQuality quality\n"
"# Processed modules\n"
"string[] modules\n"
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
"\n"
"================================================================================\n"
"MSG: vision_msgs/FaceArray\n"
"Face[] faces\n"
"\n"
"================================================================================\n"
"MSG: vision_msgs/Face\n"
"# Header for timestamp info\n"
"Header header\n"
"\n"
"# Unique identifier\n"
"string id\n"
"\n"
"# Time that the image was captured\n"
"time capture_time\n"
"\n"
"# Amount of time that the face has been tracked\n"
"duration timetrack\n"
"\n"
"# Bounding box of the face in pixels [x_origin, y_origin, width, height]\n"
"float32[4] bb\n"
"\n"
"# Center of the face (x, y, _) in the range ([0.0, 1.0], [0.0, 1.0])\n"
"geometry_msgs/Point center\n"
"\n"
"# Percentage of the face compared to the image size in pixels \n"
"# (in the range [0.0, 1.0])\n"
"float32 size\n"
"\n"
"# Rotation of the face in degrees (difference in the angle of eyes compared \n"
"# to a horizontal line)\n"
"float32 rotation 							\n"
"\n"
"#  Keypoints for eyes, nose, mouth\n"
"geometry_msgs/Point[5] keypoints\n"
"\n"
"# Confidence value in the range [0.0, 1.0]\n"
"float32 confidence\n"
"\n"
"#  Currently unused, for future compatibility\n"
"string name\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: vision_msgs/ImageClustering\n"
"# Header for timestamp / frame info\n"
"Header header\n"
"\n"
"string cluster\n"
"uint16 current_cluster_size\n"
"\n"
"================================================================================\n"
"MSG: vision_msgs/DetectedObjects\n"
"# Header for timestamp / frame info\n"
"Header header\n"
"\n"
"ClassifiedObjects positive_detections\n"
"ClassifiedObjects all_detections\n"
"\n"
"================================================================================\n"
"MSG: vision_msgs/ClassifiedObjects\n"
"ClassifiedObject[] objects\n"
"\n"
"================================================================================\n"
"MSG: vision_msgs/ClassifiedObject\n"
"# Header for timestamp info\n"
"Header header\n"
"string object_class	  	# Detected objects\n"
"float32 confidence 		# Confidence for each detected object\n"
"sensor_msgs/RegionOfInterest roi 	# Region within frame the object was detected\n"
"\n"
"================================================================================\n"
"MSG: sensor_msgs/RegionOfInterest\n"
"# This message is used to specify a region of interest within an image.\n"
"#\n"
"# When used to specify the ROI setting of the camera when the image was\n"
"# taken, the height and width fields should either match the height and\n"
"# width fields for the associated image; or height = width = 0\n"
"# indicates that the full resolution image was captured.\n"
"\n"
"uint32 x_offset  # Leftmost pixel of the ROI\n"
"                 # (0 if the ROI includes the left edge of the image)\n"
"uint32 y_offset  # Topmost pixel of the ROI\n"
"                 # (0 if the ROI includes the top edge of the image)\n"
"uint32 height    # Height of ROI\n"
"uint32 width     # Width of ROI\n"
"\n"
"# True if a distinct rectified ROI should be calculated from the \"raw\"\n"
"# ROI in this message. Typically this should be False if the full image\n"
"# is captured (ROI not used), and True if a subwindow is captured (ROI\n"
"# used).\n"
"bool do_rectify\n"
"\n"
"================================================================================\n"
"MSG: vision_msgs/ObjectFeatures\n"
"Header header\n"
"\n"
"uint8[] features\n"
"\n"
"================================================================================\n"
"MSG: vision_msgs/ImageQuality\n"
"# Header for timestamp info\n"
"Header header\n"
"float32 brightness\n"
"float32 sharpness\n"
"float32 brightness_delta\n"
"float32 sharpness_delta\n"
;
  }

  static const char* value(const ::vision_msgs::FrameResults_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::vision_msgs::FrameResults_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.faces);
      stream.next(m.clustering);
      stream.next(m.objects);
      stream.next(m.features);
      stream.next(m.quality);
      stream.next(m.modules);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct FrameResults_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::vision_msgs::FrameResults_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::vision_msgs::FrameResults_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "faces: ";
    s << std::endl;
    Printer< ::vision_msgs::FaceArray_<ContainerAllocator> >::stream(s, indent + "  ", v.faces);
    s << indent << "clustering: ";
    s << std::endl;
    Printer< ::vision_msgs::ImageClustering_<ContainerAllocator> >::stream(s, indent + "  ", v.clustering);
    s << indent << "objects: ";
    s << std::endl;
    Printer< ::vision_msgs::DetectedObjects_<ContainerAllocator> >::stream(s, indent + "  ", v.objects);
    s << indent << "features: ";
    s << std::endl;
    Printer< ::vision_msgs::ObjectFeatures_<ContainerAllocator> >::stream(s, indent + "  ", v.features);
    s << indent << "quality: ";
    s << std::endl;
    Printer< ::vision_msgs::ImageQuality_<ContainerAllocator> >::stream(s, indent + "  ", v.quality);
    s << indent << "modules[]" << std::endl;
    for (size_t i = 0; i < v.modules.size(); ++i)
    {
      s << indent << "  modules[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.modules[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // VISION_MSGS_MESSAGE_FRAMERESULTS_H
