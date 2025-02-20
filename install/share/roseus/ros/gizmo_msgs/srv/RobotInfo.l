;; Auto-generated. Do not edit!


(when (boundp 'gizmo_msgs::RobotInfo)
  (if (not (find-package "GIZMO_MSGS"))
    (make-package "GIZMO_MSGS"))
  (shadow 'RobotInfo (find-package "GIZMO_MSGS")))
(unless (find-package "GIZMO_MSGS::ROBOTINFO")
  (make-package "GIZMO_MSGS::ROBOTINFO"))
(unless (find-package "GIZMO_MSGS::ROBOTINFOREQUEST")
  (make-package "GIZMO_MSGS::ROBOTINFOREQUEST"))
(unless (find-package "GIZMO_MSGS::ROBOTINFORESPONSE")
  (make-package "GIZMO_MSGS::ROBOTINFORESPONSE"))

(in-package "ROS")





(defclass gizmo_msgs::RobotInfoRequest
  :super ros::object
  :slots ())

(defmethod gizmo_msgs::RobotInfoRequest
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

(defclass gizmo_msgs::RobotInfoResponse
  :super ros::object
  :slots (_client_interface_ver _robot_base_ver _gizmo_ver ))

(defmethod gizmo_msgs::RobotInfoResponse
  (:init
   (&key
    ((:client_interface_ver __client_interface_ver) 0)
    ((:robot_base_ver __robot_base_ver) "")
    ((:gizmo_ver __gizmo_ver) "")
    )
   (send-super :init)
   (setq _client_interface_ver (round __client_interface_ver))
   (setq _robot_base_ver (string __robot_base_ver))
   (setq _gizmo_ver (string __gizmo_ver))
   self)
  (:client_interface_ver
   (&optional __client_interface_ver)
   (if __client_interface_ver (setq _client_interface_ver __client_interface_ver)) _client_interface_ver)
  (:robot_base_ver
   (&optional __robot_base_ver)
   (if __robot_base_ver (setq _robot_base_ver __robot_base_ver)) _robot_base_ver)
  (:gizmo_ver
   (&optional __gizmo_ver)
   (if __gizmo_ver (setq _gizmo_ver __gizmo_ver)) _gizmo_ver)
  (:serialization-length
   ()
   (+
    ;; uint16 _client_interface_ver
    2
    ;; string _robot_base_ver
    4 (length _robot_base_ver)
    ;; string _gizmo_ver
    4 (length _gizmo_ver)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _client_interface_ver
       (write-word _client_interface_ver s)
     ;; string _robot_base_ver
       (write-long (length _robot_base_ver) s) (princ _robot_base_ver s)
     ;; string _gizmo_ver
       (write-long (length _gizmo_ver) s) (princ _gizmo_ver s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _client_interface_ver
     (setq _client_interface_ver (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; string _robot_base_ver
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robot_base_ver (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _gizmo_ver
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _gizmo_ver (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass gizmo_msgs::RobotInfo
  :super ros::object
  :slots ())

(setf (get gizmo_msgs::RobotInfo :md5sum-) "6bab6b4a913b26a0d3237655be117a32")
(setf (get gizmo_msgs::RobotInfo :datatype-) "gizmo_msgs/RobotInfo")
(setf (get gizmo_msgs::RobotInfo :request) gizmo_msgs::RobotInfoRequest)
(setf (get gizmo_msgs::RobotInfo :response) gizmo_msgs::RobotInfoResponse)

(defmethod gizmo_msgs::RobotInfoRequest
  (:response () (instance gizmo_msgs::RobotInfoResponse :init)))

(setf (get gizmo_msgs::RobotInfoRequest :md5sum-) "6bab6b4a913b26a0d3237655be117a32")
(setf (get gizmo_msgs::RobotInfoRequest :datatype-) "gizmo_msgs/RobotInfoRequest")
(setf (get gizmo_msgs::RobotInfoRequest :definition-)
      "---
uint16 client_interface_ver
string robot_base_ver
string gizmo_ver

")

(setf (get gizmo_msgs::RobotInfoResponse :md5sum-) "6bab6b4a913b26a0d3237655be117a32")
(setf (get gizmo_msgs::RobotInfoResponse :datatype-) "gizmo_msgs/RobotInfoResponse")
(setf (get gizmo_msgs::RobotInfoResponse :definition-)
      "---
uint16 client_interface_ver
string robot_base_ver
string gizmo_ver

")



(provide :gizmo_msgs/RobotInfo "6bab6b4a913b26a0d3237655be117a32")


