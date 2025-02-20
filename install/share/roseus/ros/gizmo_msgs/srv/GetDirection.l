;; Auto-generated. Do not edit!


(when (boundp 'gizmo_msgs::GetDirection)
  (if (not (find-package "GIZMO_MSGS"))
    (make-package "GIZMO_MSGS"))
  (shadow 'GetDirection (find-package "GIZMO_MSGS")))
(unless (find-package "GIZMO_MSGS::GETDIRECTION")
  (make-package "GIZMO_MSGS::GETDIRECTION"))
(unless (find-package "GIZMO_MSGS::GETDIRECTIONREQUEST")
  (make-package "GIZMO_MSGS::GETDIRECTIONREQUEST"))
(unless (find-package "GIZMO_MSGS::GETDIRECTIONRESPONSE")
  (make-package "GIZMO_MSGS::GETDIRECTIONRESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass gizmo_msgs::GetDirectionRequest
  :super ros::object
  :slots (_threshold _ms_duration _ms_delay ))

(defmethod gizmo_msgs::GetDirectionRequest
  (:init
   (&key
    ((:threshold __threshold) 0)
    ((:ms_duration __ms_duration) 0)
    ((:ms_delay __ms_delay) 0)
    )
   (send-super :init)
   (setq _threshold (round __threshold))
   (setq _ms_duration (round __ms_duration))
   (setq _ms_delay (round __ms_delay))
   self)
  (:threshold
   (&optional __threshold)
   (if __threshold (setq _threshold __threshold)) _threshold)
  (:ms_duration
   (&optional __ms_duration)
   (if __ms_duration (setq _ms_duration __ms_duration)) _ms_duration)
  (:ms_delay
   (&optional __ms_delay)
   (if __ms_delay (setq _ms_delay __ms_delay)) _ms_delay)
  (:serialization-length
   ()
   (+
    ;; uint8 _threshold
    1
    ;; uint16 _ms_duration
    2
    ;; uint16 _ms_delay
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _threshold
       (write-byte _threshold s)
     ;; uint16 _ms_duration
       (write-word _ms_duration s)
     ;; uint16 _ms_delay
       (write-word _ms_delay s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _threshold
     (setq _threshold (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _ms_duration
     (setq _ms_duration (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _ms_delay
     (setq _ms_delay (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass gizmo_msgs::GetDirectionResponse
  :super ros::object
  :slots (_direction _relative_angle ))

(defmethod gizmo_msgs::GetDirectionResponse
  (:init
   (&key
    ((:direction __direction) (instance geometry_msgs::Vector3 :init))
    ((:relative_angle __relative_angle) 0)
    )
   (send-super :init)
   (setq _direction __direction)
   (setq _relative_angle (round __relative_angle))
   self)
  (:direction
   (&rest __direction)
   (if (keywordp (car __direction))
       (send* _direction __direction)
     (progn
       (if __direction (setq _direction (car __direction)))
       _direction)))
  (:relative_angle
   (&optional __relative_angle)
   (if __relative_angle (setq _relative_angle __relative_angle)) _relative_angle)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Vector3 _direction
    (send _direction :serialization-length)
    ;; uint16 _relative_angle
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Vector3 _direction
       (send _direction :serialize s)
     ;; uint16 _relative_angle
       (write-word _relative_angle s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Vector3 _direction
     (send _direction :deserialize buf ptr-) (incf ptr- (send _direction :serialization-length))
   ;; uint16 _relative_angle
     (setq _relative_angle (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass gizmo_msgs::GetDirection
  :super ros::object
  :slots ())

(setf (get gizmo_msgs::GetDirection :md5sum-) "18df3bbfde541a22f50d99a6830ed9b3")
(setf (get gizmo_msgs::GetDirection :datatype-) "gizmo_msgs/GetDirection")
(setf (get gizmo_msgs::GetDirection :request) gizmo_msgs::GetDirectionRequest)
(setf (get gizmo_msgs::GetDirection :response) gizmo_msgs::GetDirectionResponse)

(defmethod gizmo_msgs::GetDirectionRequest
  (:response () (instance gizmo_msgs::GetDirectionResponse :init)))

(setf (get gizmo_msgs::GetDirectionRequest :md5sum-) "18df3bbfde541a22f50d99a6830ed9b3")
(setf (get gizmo_msgs::GetDirectionRequest :datatype-) "gizmo_msgs/GetDirectionRequest")
(setf (get gizmo_msgs::GetDirectionRequest :definition-)
      "uint8 threshold
uint16 ms_duration
uint16 ms_delay
---
geometry_msgs/Vector3 direction
uint16 relative_angle


================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
")

(setf (get gizmo_msgs::GetDirectionResponse :md5sum-) "18df3bbfde541a22f50d99a6830ed9b3")
(setf (get gizmo_msgs::GetDirectionResponse :datatype-) "gizmo_msgs/GetDirectionResponse")
(setf (get gizmo_msgs::GetDirectionResponse :definition-)
      "uint8 threshold
uint16 ms_duration
uint16 ms_delay
---
geometry_msgs/Vector3 direction
uint16 relative_angle


================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
")



(provide :gizmo_msgs/GetDirection "18df3bbfde541a22f50d99a6830ed9b3")


