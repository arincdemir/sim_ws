# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from gizmo_msgs/GetDirectionRequest.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class GetDirectionRequest(genpy.Message):
  _md5sum = "973b922ecf777fa6c205891146371856"
  _type = "gizmo_msgs/GetDirectionRequest"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """uint8 threshold
uint16 ms_duration
uint16 ms_delay
"""
  __slots__ = ['threshold','ms_duration','ms_delay']
  _slot_types = ['uint8','uint16','uint16']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       threshold,ms_duration,ms_delay

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(GetDirectionRequest, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.threshold is None:
        self.threshold = 0
      if self.ms_duration is None:
        self.ms_duration = 0
      if self.ms_delay is None:
        self.ms_delay = 0
    else:
      self.threshold = 0
      self.ms_duration = 0
      self.ms_delay = 0

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_B2H().pack(_x.threshold, _x.ms_duration, _x.ms_delay))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 5
      (_x.threshold, _x.ms_duration, _x.ms_delay,) = _get_struct_B2H().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_B2H().pack(_x.threshold, _x.ms_duration, _x.ms_delay))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 5
      (_x.threshold, _x.ms_duration, _x.ms_delay,) = _get_struct_B2H().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_B2H = None
def _get_struct_B2H():
    global _struct_B2H
    if _struct_B2H is None:
        _struct_B2H = struct.Struct("<B2H")
    return _struct_B2H
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from gizmo_msgs/GetDirectionResponse.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg

class GetDirectionResponse(genpy.Message):
  _md5sum = "4f99ddfa4492f08fd765dbee01d4e341"
  _type = "gizmo_msgs/GetDirectionResponse"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """geometry_msgs/Vector3 direction
uint16 relative_angle


================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z"""
  __slots__ = ['direction','relative_angle']
  _slot_types = ['geometry_msgs/Vector3','uint16']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       direction,relative_angle

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(GetDirectionResponse, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.direction is None:
        self.direction = geometry_msgs.msg.Vector3()
      if self.relative_angle is None:
        self.relative_angle = 0
    else:
      self.direction = geometry_msgs.msg.Vector3()
      self.relative_angle = 0

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3dH().pack(_x.direction.x, _x.direction.y, _x.direction.z, _x.relative_angle))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.direction is None:
        self.direction = geometry_msgs.msg.Vector3()
      end = 0
      _x = self
      start = end
      end += 26
      (_x.direction.x, _x.direction.y, _x.direction.z, _x.relative_angle,) = _get_struct_3dH().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3dH().pack(_x.direction.x, _x.direction.y, _x.direction.z, _x.relative_angle))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.direction is None:
        self.direction = geometry_msgs.msg.Vector3()
      end = 0
      _x = self
      start = end
      end += 26
      (_x.direction.x, _x.direction.y, _x.direction.z, _x.relative_angle,) = _get_struct_3dH().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3dH = None
def _get_struct_3dH():
    global _struct_3dH
    if _struct_3dH is None:
        _struct_3dH = struct.Struct("<3dH")
    return _struct_3dH
class GetDirection(object):
  _type          = 'gizmo_msgs/GetDirection'
  _md5sum = '18df3bbfde541a22f50d99a6830ed9b3'
  _request_class  = GetDirectionRequest
  _response_class = GetDirectionResponse
