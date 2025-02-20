;; Auto-generated. Do not edit!


(when (boundp 'gizmo_msgs::RobotPose)
  (if (not (find-package "GIZMO_MSGS"))
    (make-package "GIZMO_MSGS"))
  (shadow 'RobotPose (find-package "GIZMO_MSGS")))
(unless (find-package "GIZMO_MSGS::ROBOTPOSE")
  (make-package "GIZMO_MSGS::ROBOTPOSE"))
(unless (find-package "GIZMO_MSGS::ROBOTPOSEREQUEST")
  (make-package "GIZMO_MSGS::ROBOTPOSEREQUEST"))
(unless (find-package "GIZMO_MSGS::ROBOTPOSERESPONSE")
  (make-package "GIZMO_MSGS::ROBOTPOSERESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass gizmo_msgs::RobotPoseRequest
  :super ros::object
  :slots ())

(defmethod gizmo_msgs::RobotPoseRequest
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

(defclass gizmo_msgs::RobotPoseResponse
  :super ros::object
  :slots (_pose ))

(defmethod gizmo_msgs::RobotPoseResponse
  (:init
   (&key
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _pose __pose)
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(defclass gizmo_msgs::RobotPose
  :super ros::object
  :slots ())

(setf (get gizmo_msgs::RobotPose :md5sum-) "f192399f711a48924df9a394d37edd67")
(setf (get gizmo_msgs::RobotPose :datatype-) "gizmo_msgs/RobotPose")
(setf (get gizmo_msgs::RobotPose :request) gizmo_msgs::RobotPoseRequest)
(setf (get gizmo_msgs::RobotPose :response) gizmo_msgs::RobotPoseResponse)

(defmethod gizmo_msgs::RobotPoseRequest
  (:response () (instance gizmo_msgs::RobotPoseResponse :init)))

(setf (get gizmo_msgs::RobotPoseRequest :md5sum-) "f192399f711a48924df9a394d37edd67")
(setf (get gizmo_msgs::RobotPoseRequest :datatype-) "gizmo_msgs/RobotPoseRequest")
(setf (get gizmo_msgs::RobotPoseRequest :definition-)
      "---
geometry_msgs/Pose pose


================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")

(setf (get gizmo_msgs::RobotPoseResponse :md5sum-) "f192399f711a48924df9a394d37edd67")
(setf (get gizmo_msgs::RobotPoseResponse :datatype-) "gizmo_msgs/RobotPoseResponse")
(setf (get gizmo_msgs::RobotPoseResponse :definition-)
      "---
geometry_msgs/Pose pose


================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")



(provide :gizmo_msgs/RobotPose "f192399f711a48924df9a394d37edd67")


