;; Auto-generated. Do not edit!


(when (boundp 'gizmo_msgs::MqttSubscribe)
  (if (not (find-package "GIZMO_MSGS"))
    (make-package "GIZMO_MSGS"))
  (shadow 'MqttSubscribe (find-package "GIZMO_MSGS")))
(unless (find-package "GIZMO_MSGS::MQTTSUBSCRIBE")
  (make-package "GIZMO_MSGS::MQTTSUBSCRIBE"))
(unless (find-package "GIZMO_MSGS::MQTTSUBSCRIBEREQUEST")
  (make-package "GIZMO_MSGS::MQTTSUBSCRIBEREQUEST"))
(unless (find-package "GIZMO_MSGS::MQTTSUBSCRIBERESPONSE")
  (make-package "GIZMO_MSGS::MQTTSUBSCRIBERESPONSE"))

(in-package "ROS")





(defclass gizmo_msgs::MqttSubscribeRequest
  :super ros::object
  :slots (_topic ))

(defmethod gizmo_msgs::MqttSubscribeRequest
  (:init
   (&key
    ((:topic __topic) "")
    )
   (send-super :init)
   (setq _topic (string __topic))
   self)
  (:topic
   (&optional __topic)
   (if __topic (setq _topic __topic)) _topic)
  (:serialization-length
   ()
   (+
    ;; string _topic
    4 (length _topic)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _topic
       (write-long (length _topic) s) (princ _topic s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _topic
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _topic (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass gizmo_msgs::MqttSubscribeResponse
  :super ros::object
  :slots (_success ))

(defmethod gizmo_msgs::MqttSubscribeResponse
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

(defclass gizmo_msgs::MqttSubscribe
  :super ros::object
  :slots ())

(setf (get gizmo_msgs::MqttSubscribe :md5sum-) "d3ab87cb63701ba577b5ab3413ba13da")
(setf (get gizmo_msgs::MqttSubscribe :datatype-) "gizmo_msgs/MqttSubscribe")
(setf (get gizmo_msgs::MqttSubscribe :request) gizmo_msgs::MqttSubscribeRequest)
(setf (get gizmo_msgs::MqttSubscribe :response) gizmo_msgs::MqttSubscribeResponse)

(defmethod gizmo_msgs::MqttSubscribeRequest
  (:response () (instance gizmo_msgs::MqttSubscribeResponse :init)))

(setf (get gizmo_msgs::MqttSubscribeRequest :md5sum-) "d3ab87cb63701ba577b5ab3413ba13da")
(setf (get gizmo_msgs::MqttSubscribeRequest :datatype-) "gizmo_msgs/MqttSubscribeRequest")
(setf (get gizmo_msgs::MqttSubscribeRequest :definition-)
      "string topic
---
bool success

")

(setf (get gizmo_msgs::MqttSubscribeResponse :md5sum-) "d3ab87cb63701ba577b5ab3413ba13da")
(setf (get gizmo_msgs::MqttSubscribeResponse :datatype-) "gizmo_msgs/MqttSubscribeResponse")
(setf (get gizmo_msgs::MqttSubscribeResponse :definition-)
      "string topic
---
bool success

")



(provide :gizmo_msgs/MqttSubscribe "d3ab87cb63701ba577b5ab3413ba13da")


