;; Auto-generated. Do not edit!


(when (boundp 'vision_msgs::VisionCmdMsg)
  (if (not (find-package "VISION_MSGS"))
    (make-package "VISION_MSGS"))
  (shadow 'VisionCmdMsg (find-package "VISION_MSGS")))
(unless (find-package "VISION_MSGS::VISIONCMDMSG")
  (make-package "VISION_MSGS::VISIONCMDMSG"))

(in-package "ROS")
;;//! \htmlinclude VisionCmdMsg.msg.html
(if (not (find-package "MAYFIELD_MSGS"))
  (ros::roseus-add-msgs "mayfield_msgs"))


(defclass vision_msgs::VisionCmdMsg
  :super ros::object
  :slots (_action _module _config _params ))

(defmethod vision_msgs::VisionCmdMsg
  (:init
   (&key
    ((:action __action) "")
    ((:module __module) "")
    ((:config __config) ())
    ((:params __params) ())
    )
   (send-super :init)
   (setq _action (string __action))
   (setq _module (string __module))
   (setq _config __config)
   (setq _params __params)
   self)
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:module
   (&optional __module)
   (if __module (setq _module __module)) _module)
  (:config
   (&rest __config)
   (if (keywordp (car __config))
       (send* _config __config)
     (progn
       (if __config (setq _config (car __config)))
       _config)))
  (:params
   (&rest __params)
   (if (keywordp (car __params))
       (send* _params __params)
     (progn
       (if __params (setq _params (car __params)))
       _params)))
  (:serialization-length
   ()
   (+
    ;; string _action
    4 (length _action)
    ;; string _module
    4 (length _module)
    ;; mayfield_msgs/KeyValue[] _config
    (apply #'+ (send-all _config :serialization-length)) 4
    ;; mayfield_msgs/KeyValue[] _params
    (apply #'+ (send-all _params :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _action
       (write-long (length _action) s) (princ _action s)
     ;; string _module
       (write-long (length _module) s) (princ _module s)
     ;; mayfield_msgs/KeyValue[] _config
     (write-long (length _config) s)
     (dolist (elem _config)
       (send elem :serialize s)
       )
     ;; mayfield_msgs/KeyValue[] _params
     (write-long (length _params) s)
     (dolist (elem _params)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _action
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _action (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _module
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _module (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; mayfield_msgs/KeyValue[] _config
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _config (let (r) (dotimes (i n) (push (instance mayfield_msgs::KeyValue :init) r)) r))
     (dolist (elem- _config)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; mayfield_msgs/KeyValue[] _params
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _params (let (r) (dotimes (i n) (push (instance mayfield_msgs::KeyValue :init) r)) r))
     (dolist (elem- _params)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get vision_msgs::VisionCmdMsg :md5sum-) "b5f29199ee20cf95f7e3dafc04935512")
(setf (get vision_msgs::VisionCmdMsg :datatype-) "vision_msgs/VisionCmdMsg")
(setf (get vision_msgs::VisionCmdMsg :definition-)
      "string action
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

")



(provide :vision_msgs/VisionCmdMsg "b5f29199ee20cf95f7e3dafc04935512")


