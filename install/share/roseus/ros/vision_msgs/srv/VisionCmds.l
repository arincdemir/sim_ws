;; Auto-generated. Do not edit!


(when (boundp 'vision_msgs::VisionCmds)
  (if (not (find-package "VISION_MSGS"))
    (make-package "VISION_MSGS"))
  (shadow 'VisionCmds (find-package "VISION_MSGS")))
(unless (find-package "VISION_MSGS::VISIONCMDS")
  (make-package "VISION_MSGS::VISIONCMDS"))
(unless (find-package "VISION_MSGS::VISIONCMDSREQUEST")
  (make-package "VISION_MSGS::VISIONCMDSREQUEST"))
(unless (find-package "VISION_MSGS::VISIONCMDSRESPONSE")
  (make-package "VISION_MSGS::VISIONCMDSRESPONSE"))

(in-package "ROS")





(defclass vision_msgs::VisionCmdsRequest
  :super ros::object
  :slots (_commands ))

(defmethod vision_msgs::VisionCmdsRequest
  (:init
   (&key
    ((:commands __commands) ())
    )
   (send-super :init)
   (setq _commands __commands)
   self)
  (:commands
   (&rest __commands)
   (if (keywordp (car __commands))
       (send* _commands __commands)
     (progn
       (if __commands (setq _commands (car __commands)))
       _commands)))
  (:serialization-length
   ()
   (+
    ;; vision_msgs/VisionCmdMsg[] _commands
    (apply #'+ (send-all _commands :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; vision_msgs/VisionCmdMsg[] _commands
     (write-long (length _commands) s)
     (dolist (elem _commands)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; vision_msgs/VisionCmdMsg[] _commands
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _commands (let (r) (dotimes (i n) (push (instance vision_msgs::VisionCmdMsg :init) r)) r))
     (dolist (elem- _commands)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass vision_msgs::VisionCmdsResponse
  :super ros::object
  :slots (_success ))

(defmethod vision_msgs::VisionCmdsResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass vision_msgs::VisionCmds
  :super ros::object
  :slots ())

(setf (get vision_msgs::VisionCmds :md5sum-) "10c7d0ceeefb07098922de1daf972410")
(setf (get vision_msgs::VisionCmds :datatype-) "vision_msgs/VisionCmds")
(setf (get vision_msgs::VisionCmds :request) vision_msgs::VisionCmdsRequest)
(setf (get vision_msgs::VisionCmds :response) vision_msgs::VisionCmdsResponse)

(defmethod vision_msgs::VisionCmdsRequest
  (:response () (instance vision_msgs::VisionCmdsResponse :init)))

(setf (get vision_msgs::VisionCmdsRequest :md5sum-) "10c7d0ceeefb07098922de1daf972410")
(setf (get vision_msgs::VisionCmdsRequest :datatype-) "vision_msgs/VisionCmdsRequest")
(setf (get vision_msgs::VisionCmdsRequest :definition-)
      "VisionCmdMsg[] commands

================================================================================
MSG: vision_msgs/VisionCmdMsg
string action
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
---
bool success

")

(setf (get vision_msgs::VisionCmdsResponse :md5sum-) "10c7d0ceeefb07098922de1daf972410")
(setf (get vision_msgs::VisionCmdsResponse :datatype-) "vision_msgs/VisionCmdsResponse")
(setf (get vision_msgs::VisionCmdsResponse :definition-)
      "VisionCmdMsg[] commands

================================================================================
MSG: vision_msgs/VisionCmdMsg
string action
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
---
bool success

")



(provide :vision_msgs/VisionCmds "10c7d0ceeefb07098922de1daf972410")


