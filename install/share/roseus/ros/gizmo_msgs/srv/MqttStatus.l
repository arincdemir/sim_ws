;; Auto-generated. Do not edit!


(when (boundp 'gizmo_msgs::MqttStatus)
  (if (not (find-package "GIZMO_MSGS"))
    (make-package "GIZMO_MSGS"))
  (shadow 'MqttStatus (find-package "GIZMO_MSGS")))
(unless (find-package "GIZMO_MSGS::MQTTSTATUS")
  (make-package "GIZMO_MSGS::MQTTSTATUS"))
(unless (find-package "GIZMO_MSGS::MQTTSTATUSREQUEST")
  (make-package "GIZMO_MSGS::MQTTSTATUSREQUEST"))
(unless (find-package "GIZMO_MSGS::MQTTSTATUSRESPONSE")
  (make-package "GIZMO_MSGS::MQTTSTATUSRESPONSE"))

(in-package "ROS")





(defclass gizmo_msgs::MqttStatusRequest
  :super ros::object
  :slots ())

(defmethod gizmo_msgs::MqttStatusRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass gizmo_msgs::MqttStatusResponse
  :super ros::object
  :slots (_device _environment _robot_id _alt_cred_path _connected ))

(defmethod gizmo_msgs::MqttStatusResponse
  (:init
   (&key
    ((:device __device) "")
    ((:environment __environment) "")
    ((:robot_id __robot_id) "")
    ((:alt_cred_path __alt_cred_path) "")
    ((:connected __connected) nil)
    )
   (send-super :init)
   (setq _device (string __device))
   (setq _environment (string __environment))
   (setq _robot_id (string __robot_id))
   (setq _alt_cred_path (string __alt_cred_path))
   (setq _connected __connected)
   self)
  (:device
   (&optional __device)
   (if __device (setq _device __device)) _device)
  (:environment
   (&optional __environment)
   (if __environment (setq _environment __environment)) _environment)
  (:robot_id
   (&optional __robot_id)
   (if __robot_id (setq _robot_id __robot_id)) _robot_id)
  (:alt_cred_path
   (&optional __alt_cred_path)
   (if __alt_cred_path (setq _alt_cred_path __alt_cred_path)) _alt_cred_path)
  (:connected
   (&optional (__connected :null))
   (if (not (eq __connected :null)) (setq _connected __connected)) _connected)
  (:serialization-length
   ()
   (+
    ;; string _device
    4 (length _device)
    ;; string _environment
    4 (length _environment)
    ;; string _robot_id
    4 (length _robot_id)
    ;; string _alt_cred_path
    4 (length _alt_cred_path)
    ;; bool _connected
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _device
       (write-long (length _device) s) (princ _device s)
     ;; string _environment
       (write-long (length _environment) s) (princ _environment s)
     ;; string _robot_id
       (write-long (length _robot_id) s) (princ _robot_id s)
     ;; string _alt_cred_path
       (write-long (length _alt_cred_path) s) (princ _alt_cred_path s)
     ;; bool _connected
       (if _connected (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _device
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _device (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _environment
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _environment (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _robot_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robot_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _alt_cred_path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _alt_cred_path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _connected
     (setq _connected (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass gizmo_msgs::MqttStatus
  :super ros::object
  :slots ())

(setf (get gizmo_msgs::MqttStatus :md5sum-) "3313a52b8cda4d151d159b5b106a66d1")
(setf (get gizmo_msgs::MqttStatus :datatype-) "gizmo_msgs/MqttStatus")
(setf (get gizmo_msgs::MqttStatus :request) gizmo_msgs::MqttStatusRequest)
(setf (get gizmo_msgs::MqttStatus :response) gizmo_msgs::MqttStatusResponse)

(defmethod gizmo_msgs::MqttStatusRequest
  (:response () (instance gizmo_msgs::MqttStatusResponse :init)))

(setf (get gizmo_msgs::MqttStatusRequest :md5sum-) "3313a52b8cda4d151d159b5b106a66d1")
(setf (get gizmo_msgs::MqttStatusRequest :datatype-) "gizmo_msgs/MqttStatusRequest")
(setf (get gizmo_msgs::MqttStatusRequest :definition-)
      "---
# MQTT Node will assemble topic names for you based on the device, environment
# robot_id, and the 'endpoint' which is specified when you publish the message
# More info at:
# https://github.com/mayfieldrobotics/kuri_project_management/tree/master/mqtt
string device
string environment
string robot_id

# In test environment, we let MQTT pick its own path for credentials so we
# don't interfere with other MQTT nodes
string alt_cred_path

bool connected

")

(setf (get gizmo_msgs::MqttStatusResponse :md5sum-) "3313a52b8cda4d151d159b5b106a66d1")
(setf (get gizmo_msgs::MqttStatusResponse :datatype-) "gizmo_msgs/MqttStatusResponse")
(setf (get gizmo_msgs::MqttStatusResponse :definition-)
      "---
# MQTT Node will assemble topic names for you based on the device, environment
# robot_id, and the 'endpoint' which is specified when you publish the message
# More info at:
# https://github.com/mayfieldrobotics/kuri_project_management/tree/master/mqtt
string device
string environment
string robot_id

# In test environment, we let MQTT pick its own path for credentials so we
# don't interfere with other MQTT nodes
string alt_cred_path

bool connected

")



(provide :gizmo_msgs/MqttStatus "3313a52b8cda4d151d159b5b106a66d1")


