;; Auto-generated. Do not edit!


(when (boundp 'may_nav_msgs::GetObstacleDist)
  (if (not (find-package "MAY_NAV_MSGS"))
    (make-package "MAY_NAV_MSGS"))
  (shadow 'GetObstacleDist (find-package "MAY_NAV_MSGS")))
(unless (find-package "MAY_NAV_MSGS::GETOBSTACLEDIST")
  (make-package "MAY_NAV_MSGS::GETOBSTACLEDIST"))
(unless (find-package "MAY_NAV_MSGS::GETOBSTACLEDISTREQUEST")
  (make-package "MAY_NAV_MSGS::GETOBSTACLEDISTREQUEST"))
(unless (find-package "MAY_NAV_MSGS::GETOBSTACLEDISTRESPONSE")
  (make-package "MAY_NAV_MSGS::GETOBSTACLEDISTRESPONSE"))

(in-package "ROS")





(defclass may_nav_msgs::GetObstacleDistRequest
  :super ros::object
  :slots ())

(defmethod may_nav_msgs::GetObstacleDistRequest
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

(defclass may_nav_msgs::GetObstacleDistResponse
  :super ros::object
  :slots (_obstacle_dist ))

(defmethod may_nav_msgs::GetObstacleDistResponse
  (:init
   (&key
    ((:obstacle_dist __obstacle_dist) 0.0)
    )
   (send-super :init)
   (setq _obstacle_dist (float __obstacle_dist))
   self)
  (:obstacle_dist
   (&optional __obstacle_dist)
   (if __obstacle_dist (setq _obstacle_dist __obstacle_dist)) _obstacle_dist)
  (:serialization-length
   ()
   (+
    ;; float64 _obstacle_dist
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _obstacle_dist
       (sys::poke _obstacle_dist (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _obstacle_dist
     (setq _obstacle_dist (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass may_nav_msgs::GetObstacleDist
  :super ros::object
  :slots ())

(setf (get may_nav_msgs::GetObstacleDist :md5sum-) "444b488bceb285c64c25be6c2269d8db")
(setf (get may_nav_msgs::GetObstacleDist :datatype-) "may_nav_msgs/GetObstacleDist")
(setf (get may_nav_msgs::GetObstacleDist :request) may_nav_msgs::GetObstacleDistRequest)
(setf (get may_nav_msgs::GetObstacleDist :response) may_nav_msgs::GetObstacleDistResponse)

(defmethod may_nav_msgs::GetObstacleDistRequest
  (:response () (instance may_nav_msgs::GetObstacleDistResponse :init)))

(setf (get may_nav_msgs::GetObstacleDistRequest :md5sum-) "444b488bceb285c64c25be6c2269d8db")
(setf (get may_nav_msgs::GetObstacleDistRequest :datatype-) "may_nav_msgs/GetObstacleDistRequest")
(setf (get may_nav_msgs::GetObstacleDistRequest :definition-)
      "---
float64 obstacle_dist
")

(setf (get may_nav_msgs::GetObstacleDistResponse :md5sum-) "444b488bceb285c64c25be6c2269d8db")
(setf (get may_nav_msgs::GetObstacleDistResponse :datatype-) "may_nav_msgs/GetObstacleDistResponse")
(setf (get may_nav_msgs::GetObstacleDistResponse :definition-)
      "---
float64 obstacle_dist
")



(provide :may_nav_msgs/GetObstacleDist "444b488bceb285c64c25be6c2269d8db")


