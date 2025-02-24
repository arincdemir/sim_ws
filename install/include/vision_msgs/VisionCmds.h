// Generated by gencpp from file vision_msgs/VisionCmds.msg
// DO NOT EDIT!


#ifndef VISION_MSGS_MESSAGE_VISIONCMDS_H
#define VISION_MSGS_MESSAGE_VISIONCMDS_H

#include <ros/service_traits.h>


#include <vision_msgs/VisionCmdsRequest.h>
#include <vision_msgs/VisionCmdsResponse.h>


namespace vision_msgs
{

struct VisionCmds
{

typedef VisionCmdsRequest Request;
typedef VisionCmdsResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct VisionCmds
} // namespace vision_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::vision_msgs::VisionCmds > {
  static const char* value()
  {
    return "10c7d0ceeefb07098922de1daf972410";
  }

  static const char* value(const ::vision_msgs::VisionCmds&) { return value(); }
};

template<>
struct DataType< ::vision_msgs::VisionCmds > {
  static const char* value()
  {
    return "vision_msgs/VisionCmds";
  }

  static const char* value(const ::vision_msgs::VisionCmds&) { return value(); }
};


// service_traits::MD5Sum< ::vision_msgs::VisionCmdsRequest> should match
// service_traits::MD5Sum< ::vision_msgs::VisionCmds >
template<>
struct MD5Sum< ::vision_msgs::VisionCmdsRequest>
{
  static const char* value()
  {
    return MD5Sum< ::vision_msgs::VisionCmds >::value();
  }
  static const char* value(const ::vision_msgs::VisionCmdsRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::vision_msgs::VisionCmdsRequest> should match
// service_traits::DataType< ::vision_msgs::VisionCmds >
template<>
struct DataType< ::vision_msgs::VisionCmdsRequest>
{
  static const char* value()
  {
    return DataType< ::vision_msgs::VisionCmds >::value();
  }
  static const char* value(const ::vision_msgs::VisionCmdsRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::vision_msgs::VisionCmdsResponse> should match
// service_traits::MD5Sum< ::vision_msgs::VisionCmds >
template<>
struct MD5Sum< ::vision_msgs::VisionCmdsResponse>
{
  static const char* value()
  {
    return MD5Sum< ::vision_msgs::VisionCmds >::value();
  }
  static const char* value(const ::vision_msgs::VisionCmdsResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::vision_msgs::VisionCmdsResponse> should match
// service_traits::DataType< ::vision_msgs::VisionCmds >
template<>
struct DataType< ::vision_msgs::VisionCmdsResponse>
{
  static const char* value()
  {
    return DataType< ::vision_msgs::VisionCmds >::value();
  }
  static const char* value(const ::vision_msgs::VisionCmdsResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // VISION_MSGS_MESSAGE_VISIONCMDS_H
