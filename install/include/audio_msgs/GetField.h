// Generated by gencpp from file audio_msgs/GetField.msg
// DO NOT EDIT!


#ifndef AUDIO_MSGS_MESSAGE_GETFIELD_H
#define AUDIO_MSGS_MESSAGE_GETFIELD_H

#include <ros/service_traits.h>


#include <audio_msgs/GetFieldRequest.h>
#include <audio_msgs/GetFieldResponse.h>


namespace audio_msgs
{

struct GetField
{

typedef GetFieldRequest Request;
typedef GetFieldResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GetField
} // namespace audio_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::audio_msgs::GetField > {
  static const char* value()
  {
    return "fefc1eaa409232c39ae3f696ddd678d5";
  }

  static const char* value(const ::audio_msgs::GetField&) { return value(); }
};

template<>
struct DataType< ::audio_msgs::GetField > {
  static const char* value()
  {
    return "audio_msgs/GetField";
  }

  static const char* value(const ::audio_msgs::GetField&) { return value(); }
};


// service_traits::MD5Sum< ::audio_msgs::GetFieldRequest> should match
// service_traits::MD5Sum< ::audio_msgs::GetField >
template<>
struct MD5Sum< ::audio_msgs::GetFieldRequest>
{
  static const char* value()
  {
    return MD5Sum< ::audio_msgs::GetField >::value();
  }
  static const char* value(const ::audio_msgs::GetFieldRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::audio_msgs::GetFieldRequest> should match
// service_traits::DataType< ::audio_msgs::GetField >
template<>
struct DataType< ::audio_msgs::GetFieldRequest>
{
  static const char* value()
  {
    return DataType< ::audio_msgs::GetField >::value();
  }
  static const char* value(const ::audio_msgs::GetFieldRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::audio_msgs::GetFieldResponse> should match
// service_traits::MD5Sum< ::audio_msgs::GetField >
template<>
struct MD5Sum< ::audio_msgs::GetFieldResponse>
{
  static const char* value()
  {
    return MD5Sum< ::audio_msgs::GetField >::value();
  }
  static const char* value(const ::audio_msgs::GetFieldResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::audio_msgs::GetFieldResponse> should match
// service_traits::DataType< ::audio_msgs::GetField >
template<>
struct DataType< ::audio_msgs::GetFieldResponse>
{
  static const char* value()
  {
    return DataType< ::audio_msgs::GetField >::value();
  }
  static const char* value(const ::audio_msgs::GetFieldResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // AUDIO_MSGS_MESSAGE_GETFIELD_H
