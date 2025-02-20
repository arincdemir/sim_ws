;; Auto-generated. Do not edit!


(when (boundp 'vision_msgs::VisionActiveModules)
  (if (not (find-package "VISION_MSGS"))
    (make-package "VISION_MSGS"))
  (shadow 'VisionActiveModules (find-package "VISION_MSGS")))
(unless (find-package "VISION_MSGS::VISIONACTIVEMODULES")
  (make-package "VISION_MSGS::VISIONACTIVEMODULES"))
(unless (find-package "VISION_MSGS::VISIONACTIVEMODULESREQUEST")
  (make-package "VISION_MSGS::VISIONACTIVEMODULESREQUEST"))
(unless (find-package "VISION_MSGS::VISIONACTIVEMODULESRESPONSE")
  (make-package "VISION_MSGS::VISIONACTIVEMODULESRESPONSE"))

(in-package "ROS")





(defclass vision_msgs::VisionActiveModulesRequest
  :super ros::object
  :slots ())

(defmethod vision_msgs::VisionActiveModulesRequest
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

(defclass vision_msgs::VisionActiveModulesResponse
  :super ros::object
  :slots (_modules ))

(defmethod vision_msgs::VisionActiveModulesResponse
  (:init
   (&key
    ((:modules __modules) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _modules __modules)
   self)
  (:modules
   (&optional __modules)
   (if __modules (setq _modules __modules)) _modules)
  (:serialization-length
   ()
   (+
    ;; string[] _modules
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _modules)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _modules
     (write-long (length _modules) s)
     (dolist (elem _modules)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _modules
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _modules (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _modules i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass vision_msgs::VisionActiveModules
  :super ros::object
  :slots ())

(setf (get vision_msgs::VisionActiveModules :md5sum-) "c553a0d7cb2ac6d8e15855b335552825")
(setf (get vision_msgs::VisionActiveModules :datatype-) "vision_msgs/VisionActiveModules")
(setf (get vision_msgs::VisionActiveModules :request) vision_msgs::VisionActiveModulesRequest)
(setf (get vision_msgs::VisionActiveModules :response) vision_msgs::VisionActiveModulesResponse)

(defmethod vision_msgs::VisionActiveModulesRequest
  (:response () (instance vision_msgs::VisionActiveModulesResponse :init)))

(setf (get vision_msgs::VisionActiveModulesRequest :md5sum-) "c553a0d7cb2ac6d8e15855b335552825")
(setf (get vision_msgs::VisionActiveModulesRequest :datatype-) "vision_msgs/VisionActiveModulesRequest")
(setf (get vision_msgs::VisionActiveModulesRequest :definition-)
      "---
string[] modules

")

(setf (get vision_msgs::VisionActiveModulesResponse :md5sum-) "c553a0d7cb2ac6d8e15855b335552825")
(setf (get vision_msgs::VisionActiveModulesResponse :datatype-) "vision_msgs/VisionActiveModulesResponse")
(setf (get vision_msgs::VisionActiveModulesResponse :definition-)
      "---
string[] modules

")



(provide :vision_msgs/VisionActiveModules "c553a0d7cb2ac6d8e15855b335552825")


