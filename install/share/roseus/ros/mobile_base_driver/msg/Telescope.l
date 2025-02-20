;; Auto-generated. Do not edit!


(when (boundp 'mobile_base_driver::Telescope)
  (if (not (find-package "MOBILE_BASE_DRIVER"))
    (make-package "MOBILE_BASE_DRIVER"))
  (shadow 'Telescope (find-package "MOBILE_BASE_DRIVER")))
(unless (find-package "MOBILE_BASE_DRIVER::TELESCOPE")
  (make-package "MOBILE_BASE_DRIVER::TELESCOPE"))

(in-package "ROS")
;;//! \htmlinclude Telescope.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mobile_base_driver::Telescope
  :super ros::object
  :slots (_header _front_noise _front_left _front_right _front_middle _back_noise _back_left _back_right _back_middle ))

(defmethod mobile_base_driver::Telescope
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:front_noise __front_noise) nil)
    ((:front_left __front_left) nil)
    ((:front_right __front_right) nil)
    ((:front_middle __front_middle) nil)
    ((:back_noise __back_noise) nil)
    ((:back_left __back_left) nil)
    ((:back_right __back_right) nil)
    ((:back_middle __back_middle) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _front_noise __front_noise)
   (setq _front_left __front_left)
   (setq _front_right __front_right)
   (setq _front_middle __front_middle)
   (setq _back_noise __back_noise)
   (setq _back_left __back_left)
   (setq _back_right __back_right)
   (setq _back_middle __back_middle)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:front_noise
   (&optional (__front_noise :null))
   (if (not (eq __front_noise :null)) (setq _front_noise __front_noise)) _front_noise)
  (:front_left
   (&optional (__front_left :null))
   (if (not (eq __front_left :null)) (setq _front_left __front_left)) _front_left)
  (:front_right
   (&optional (__front_right :null))
   (if (not (eq __front_right :null)) (setq _front_right __front_right)) _front_right)
  (:front_middle
   (&optional (__front_middle :null))
   (if (not (eq __front_middle :null)) (setq _front_middle __front_middle)) _front_middle)
  (:back_noise
   (&optional (__back_noise :null))
   (if (not (eq __back_noise :null)) (setq _back_noise __back_noise)) _back_noise)
  (:back_left
   (&optional (__back_left :null))
   (if (not (eq __back_left :null)) (setq _back_left __back_left)) _back_left)
  (:back_right
   (&optional (__back_right :null))
   (if (not (eq __back_right :null)) (setq _back_right __back_right)) _back_right)
  (:back_middle
   (&optional (__back_middle :null))
   (if (not (eq __back_middle :null)) (setq _back_middle __back_middle)) _back_middle)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _front_noise
    1
    ;; bool _front_left
    1
    ;; bool _front_right
    1
    ;; bool _front_middle
    1
    ;; bool _back_noise
    1
    ;; bool _back_left
    1
    ;; bool _back_right
    1
    ;; bool _back_middle
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _front_noise
       (if _front_noise (write-byte -1 s) (write-byte 0 s))
     ;; bool _front_left
       (if _front_left (write-byte -1 s) (write-byte 0 s))
     ;; bool _front_right
       (if _front_right (write-byte -1 s) (write-byte 0 s))
     ;; bool _front_middle
       (if _front_middle (write-byte -1 s) (write-byte 0 s))
     ;; bool _back_noise
       (if _back_noise (write-byte -1 s) (write-byte 0 s))
     ;; bool _back_left
       (if _back_left (write-byte -1 s) (write-byte 0 s))
     ;; bool _back_right
       (if _back_right (write-byte -1 s) (write-byte 0 s))
     ;; bool _back_middle
       (if _back_middle (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _front_noise
     (setq _front_noise (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _front_left
     (setq _front_left (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _front_right
     (setq _front_right (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _front_middle
     (setq _front_middle (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _back_noise
     (setq _back_noise (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _back_left
     (setq _back_left (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _back_right
     (setq _back_right (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _back_middle
     (setq _back_middle (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get mobile_base_driver::Telescope :md5sum-) "d73db4ad7bf87689fa1b86ed4b74ff85")
(setf (get mobile_base_driver::Telescope :datatype-) "mobile_base_driver/Telescope")
(setf (get mobile_base_driver::Telescope :definition-)
      "Header header
bool front_noise
bool front_left
bool front_right
bool front_middle
bool back_noise
bool back_left
bool back_right
bool back_middle

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :mobile_base_driver/Telescope "d73db4ad7bf87689fa1b86ed4b74ff85")


