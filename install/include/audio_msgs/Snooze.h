// Generated by gencpp from file audio_msgs/Snooze.msg
// DO NOT EDIT!


#ifndef AUDIO_MSGS_MESSAGE_SNOOZE_H
#define AUDIO_MSGS_MESSAGE_SNOOZE_H

#include <ros/service_traits.h>


#include <audio_msgs/SnoozeRequest.h>
#include <audio_msgs/SnoozeResponse.h>


namespace audio_msgs
{

struct Snooze
{

typedef SnoozeRequest Request;
typedef SnoozeResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Snooze
} // namespace audio_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::audio_msgs::Snooze > {
  static const char* value()
  {
    return "af6d3a99f0fbeb66d3248fa4b3e675fb";
  }

  static const char* value(const ::audio_msgs::Snooze&) { return value(); }
};

template<>
struct DataType< ::audio_msgs::Snooze > {
  static const char* value()
  {
    return "audio_msgs/Snooze";
  }

  static const char* value(const ::audio_msgs::Snooze&) { return value(); }
};


// service_traits::MD5Sum< ::audio_msgs::SnoozeRequest> should match
// service_traits::MD5Sum< ::audio_msgs::Snooze >
template<>
struct MD5Sum< ::audio_msgs::SnoozeRequest>
{
  static const char* value()
  {
    return MD5Sum< ::audio_msgs::Snooze >::value();
  }
  static const char* value(const ::audio_msgs::SnoozeRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::audio_msgs::SnoozeRequest> should match
// service_traits::DataType< ::audio_msgs::Snooze >
template<>
struct DataType< ::audio_msgs::SnoozeRequest>
{
  static const char* value()
  {
    return DataType< ::audio_msgs::Snooze >::value();
  }
  static const char* value(const ::audio_msgs::SnoozeRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::audio_msgs::SnoozeResponse> should match
// service_traits::MD5Sum< ::audio_msgs::Snooze >
template<>
struct MD5Sum< ::audio_msgs::SnoozeResponse>
{
  static const char* value()
  {
    return MD5Sum< ::audio_msgs::Snooze >::value();
  }
  static const char* value(const ::audio_msgs::SnoozeResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::audio_msgs::SnoozeResponse> should match
// service_traits::DataType< ::audio_msgs::Snooze >
template<>
struct DataType< ::audio_msgs::SnoozeResponse>
{
  static const char* value()
  {
    return DataType< ::audio_msgs::Snooze >::value();
  }
  static const char* value(const ::audio_msgs::SnoozeResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // AUDIO_MSGS_MESSAGE_SNOOZE_H
