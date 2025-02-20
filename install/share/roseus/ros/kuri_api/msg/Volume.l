;; Auto-generated. Do not edit!


(when (boundp 'kuri_api::Volume)
  (if (not (find-package "KURI_API"))
    (make-package "KURI_API"))
  (shadow 'Volume (find-package "KURI_API")))
(unless (find-package "KURI_API::VOLUME")
  (make-package "KURI_API::VOLUME"))

(in-package "ROS")
;;//! \htmlinclude Volume.msg.html


(defclass kuri_api::Volume
  :super ros::object
  :slots (_level _is_relative _mute _unmute ))

(defmethod kuri_api::Volume
  (:init
   (&key
    ((:level __level) 0)
    ((:is_relative __is_relative) nil)
    ((:mute __mute) nil)
    ((:unmute __unmute) nil)
    )
   (send-super :init)
   (setq _level (round __level))
   (setq _is_relative __is_relative)
   (setq _mute __mute)
   (setq _unmute __unmute)
   self)
  (:level
   (&optional __level)
   (if __level (setq _level __level)) _level)
  (:is_relative
   (&optional (__is_relative :null))
   (if (not (eq __is_relative :null)) (setq _is_relative __is_relative)) _is_relative)
  (:mute
   (&optional (__mute :null))
   (if (not (eq __mute :null)) (setq _mute __mute)) _mute)
  (:unmute
   (&optional (__unmute :null))
   (if (not (eq __unmute :null)) (setq _unmute __unmute)) _unmute)
  (:serialization-length
   ()
   (+
    ;; int16 _level
    2
    ;; bool _is_relative
    1
    ;; bool _mute
    1
    ;; bool _unmute
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _level
       (write-word _level s)
     ;; bool _is_relative
       (if _is_relative (write-byte -1 s) (write-byte 0 s))
     ;; bool _mute
       (if _mute (write-byte -1 s) (write-byte 0 s))
     ;; bool _unmute
       (if _unmute (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _level
     (setq _level (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; bool _is_relative
     (setq _is_relative (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _mute
     (setq _mute (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _unmute
     (setq _unmute (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get kuri_api::Volume :md5sum-) "c2006af99be3d44213e306b5de119dfc")
(setf (get kuri_api::Volume :datatype-) "kuri_api/Volume")
(setf (get kuri_api::Volume :definition-)
      "# Volume level
# If is_relative is True, this adds to the current volume level
# If is_relative is False, this sets the current volume level
# Note: level is on the range [0:100], and will be clapmed appropriately
# upon receipt of this message
int16 level

# Whether the level should be added to the current level or set absolutely
bool is_relative

# Mute and unmute
# If either of these are set to true, the above values will not be used
# Muting stores the volume level and sets the level to 0
# Unmuting restores the volume level (or uses the default volume if no level
# has been stored)
bool mute
bool unmute

")



(provide :kuri_api/Volume "c2006af99be3d44213e306b5de119dfc")


