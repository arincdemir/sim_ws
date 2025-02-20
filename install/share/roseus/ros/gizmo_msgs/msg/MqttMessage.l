;; Auto-generated. Do not edit!


(when (boundp 'gizmo_msgs::MqttMessage)
  (if (not (find-package "GIZMO_MSGS"))
    (make-package "GIZMO_MSGS"))
  (shadow 'MqttMessage (find-package "GIZMO_MSGS")))
(unless (find-package "GIZMO_MSGS::MQTTMESSAGE")
  (make-package "GIZMO_MSGS::MQTTMESSAGE"))

(in-package "ROS")
;;//! \htmlinclude MqttMessage.msg.html


(defclass gizmo_msgs::MqttMessage
  :super ros::object
  :slots (_topic _payload ))

(defmethod gizmo_msgs::MqttMessage
  (:init
   (&key
    ((:topic __topic) "")
    ((:payload __payload) "")
    )
   (send-super :init)
   (setq _topic (string __topic))
   (setq _payload (string __payload))
   self)
  (:topic
   (&optional __topic)
   (if __topic (setq _topic __topic)) _topic)
  (:payload
   (&optional __payload)
   (if __payload (setq _payload __payload)) _payload)
  (:serialization-length
   ()
   (+
    ;; string _topic
    4 (length _topic)
    ;; string _payload
    4 (length _payload)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _topic
       (write-long (length _topic) s) (princ _topic s)
     ;; string _payload
       (write-long (length _payload) s) (princ _payload s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _topic
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _topic (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _payload
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _payload (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get gizmo_msgs::MqttMessage :md5sum-) "6282ed264ea4df95b3b9b7a4ec52d03c")
(setf (get gizmo_msgs::MqttMessage :datatype-) "gizmo_msgs/MqttMessage")
(setf (get gizmo_msgs::MqttMessage :definition-)
      "string topic
string payload

")



(provide :gizmo_msgs/MqttMessage "6282ed264ea4df95b3b9b7a4ec52d03c")


