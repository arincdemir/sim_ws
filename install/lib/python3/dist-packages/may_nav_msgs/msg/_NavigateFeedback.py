# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from may_nav_msgs/NavigateFeedback.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg

class NavigateFeedback(genpy.Message):
  _md5sum = "93b607f29b90c517db4c9c6c8eb188e9"
  _type = "may_nav_msgs/NavigateFeedback"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#State fed back to ios (Controlling, Planning, etc)
string state
#Current state of may_nav's state machine
string state_machine_state

#target pose is the target_pose set by the local planner
geometry_msgs/Pose2D target_pose
geometry_msgs/Pose2D cmd_vel
#has_bumped is set to true when the bump sensor message has been received by may_nav
bool has_bumped
uint32 num_replans
bool replan_failure_occurred


================================================================================
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta
"""
  __slots__ = ['state','state_machine_state','target_pose','cmd_vel','has_bumped','num_replans','replan_failure_occurred']
  _slot_types = ['string','string','geometry_msgs/Pose2D','geometry_msgs/Pose2D','bool','uint32','bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       state,state_machine_state,target_pose,cmd_vel,has_bumped,num_replans,replan_failure_occurred

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(NavigateFeedback, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.state is None:
        self.state = ''
      if self.state_machine_state is None:
        self.state_machine_state = ''
      if self.target_pose is None:
        self.target_pose = geometry_msgs.msg.Pose2D()
      if self.cmd_vel is None:
        self.cmd_vel = geometry_msgs.msg.Pose2D()
      if self.has_bumped is None:
        self.has_bumped = False
      if self.num_replans is None:
        self.num_replans = 0
      if self.replan_failure_occurred is None:
        self.replan_failure_occurred = False
    else:
      self.state = ''
      self.state_machine_state = ''
      self.target_pose = geometry_msgs.msg.Pose2D()
      self.cmd_vel = geometry_msgs.msg.Pose2D()
      self.has_bumped = False
      self.num_replans = 0
      self.replan_failure_occurred = False

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
      _x = self.state
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.state_machine_state
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_6dBIB().pack(_x.target_pose.x, _x.target_pose.y, _x.target_pose.theta, _x.cmd_vel.x, _x.cmd_vel.y, _x.cmd_vel.theta, _x.has_bumped, _x.num_replans, _x.replan_failure_occurred))
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
      if self.target_pose is None:
        self.target_pose = geometry_msgs.msg.Pose2D()
      if self.cmd_vel is None:
        self.cmd_vel = geometry_msgs.msg.Pose2D()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.state = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.state = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.state_machine_state = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.state_machine_state = str[start:end]
      _x = self
      start = end
      end += 54
      (_x.target_pose.x, _x.target_pose.y, _x.target_pose.theta, _x.cmd_vel.x, _x.cmd_vel.y, _x.cmd_vel.theta, _x.has_bumped, _x.num_replans, _x.replan_failure_occurred,) = _get_struct_6dBIB().unpack(str[start:end])
      self.has_bumped = bool(self.has_bumped)
      self.replan_failure_occurred = bool(self.replan_failure_occurred)
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
      _x = self.state
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.state_machine_state
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_6dBIB().pack(_x.target_pose.x, _x.target_pose.y, _x.target_pose.theta, _x.cmd_vel.x, _x.cmd_vel.y, _x.cmd_vel.theta, _x.has_bumped, _x.num_replans, _x.replan_failure_occurred))
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
      if self.target_pose is None:
        self.target_pose = geometry_msgs.msg.Pose2D()
      if self.cmd_vel is None:
        self.cmd_vel = geometry_msgs.msg.Pose2D()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.state = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.state = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.state_machine_state = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.state_machine_state = str[start:end]
      _x = self
      start = end
      end += 54
      (_x.target_pose.x, _x.target_pose.y, _x.target_pose.theta, _x.cmd_vel.x, _x.cmd_vel.y, _x.cmd_vel.theta, _x.has_bumped, _x.num_replans, _x.replan_failure_occurred,) = _get_struct_6dBIB().unpack(str[start:end])
      self.has_bumped = bool(self.has_bumped)
      self.replan_failure_occurred = bool(self.replan_failure_occurred)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_6dBIB = None
def _get_struct_6dBIB():
    global _struct_6dBIB
    if _struct_6dBIB is None:
        _struct_6dBIB = struct.Struct("<6dBIB")
    return _struct_6dBIB
