# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from vision_msgs/VisionCmdMsg.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import mayfield_msgs.msg

class VisionCmdMsg(genpy.Message):
  _md5sum = "b5f29199ee20cf95f7e3dafc04935512"
  _type = "vision_msgs/VisionCmdMsg"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """string action
string module
# Optional config
mayfield_msgs/KeyValue[] config
# Optional params
mayfield_msgs/KeyValue[] params

================================================================================
MSG: mayfield_msgs/KeyValue
# Key value pair, with values represented as strings
string k
string v
"""
  __slots__ = ['action','module','config','params']
  _slot_types = ['string','string','mayfield_msgs/KeyValue[]','mayfield_msgs/KeyValue[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       action,module,config,params

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(VisionCmdMsg, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.action is None:
        self.action = ''
      if self.module is None:
        self.module = ''
      if self.config is None:
        self.config = []
      if self.params is None:
        self.params = []
    else:
      self.action = ''
      self.module = ''
      self.config = []
      self.params = []

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
      _x = self.action
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.module
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      length = len(self.config)
      buff.write(_struct_I.pack(length))
      for val1 in self.config:
        _x = val1.k
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1.v
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      length = len(self.params)
      buff.write(_struct_I.pack(length))
      for val1 in self.params:
        _x = val1.k
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1.v
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
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
      if self.config is None:
        self.config = None
      if self.params is None:
        self.params = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.action = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.module = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.module = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.config = []
      for i in range(0, length):
        val1 = mayfield_msgs.msg.KeyValue()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.k = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.k = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.v = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.v = str[start:end]
        self.config.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.params = []
      for i in range(0, length):
        val1 = mayfield_msgs.msg.KeyValue()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.k = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.k = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.v = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.v = str[start:end]
        self.params.append(val1)
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
      _x = self.action
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.module
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      length = len(self.config)
      buff.write(_struct_I.pack(length))
      for val1 in self.config:
        _x = val1.k
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1.v
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      length = len(self.params)
      buff.write(_struct_I.pack(length))
      for val1 in self.params:
        _x = val1.k
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1.v
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
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
      if self.config is None:
        self.config = None
      if self.params is None:
        self.params = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.action = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.module = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.module = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.config = []
      for i in range(0, length):
        val1 = mayfield_msgs.msg.KeyValue()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.k = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.k = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.v = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.v = str[start:end]
        self.config.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.params = []
      for i in range(0, length):
        val1 = mayfield_msgs.msg.KeyValue()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.k = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.k = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.v = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.v = str[start:end]
        self.params.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
