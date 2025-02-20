;; Auto-generated. Do not edit!


(when (boundp 'gizmo_msgs::UploaderStatus)
  (if (not (find-package "GIZMO_MSGS"))
    (make-package "GIZMO_MSGS"))
  (shadow 'UploaderStatus (find-package "GIZMO_MSGS")))
(unless (find-package "GIZMO_MSGS::UPLOADERSTATUS")
  (make-package "GIZMO_MSGS::UPLOADERSTATUS"))
(unless (find-package "GIZMO_MSGS::UPLOADERSTATUSREQUEST")
  (make-package "GIZMO_MSGS::UPLOADERSTATUSREQUEST"))
(unless (find-package "GIZMO_MSGS::UPLOADERSTATUSRESPONSE")
  (make-package "GIZMO_MSGS::UPLOADERSTATUSRESPONSE"))

(in-package "ROS")





(defclass gizmo_msgs::UploaderStatusRequest
  :super ros::object
  :slots ())

(defmethod gizmo_msgs::UploaderStatusRequest
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

(defclass gizmo_msgs::UploaderStatusResponse
  :super ros::object
  :slots (_uploader_queue ))

(defmethod gizmo_msgs::UploaderStatusResponse
  (:init
   (&key
    ((:uploader_queue __uploader_queue) "")
    )
   (send-super :init)
   (setq _uploader_queue (string __uploader_queue))
   self)
  (:uploader_queue
   (&optional __uploader_queue)
   (if __uploader_queue (setq _uploader_queue __uploader_queue)) _uploader_queue)
  (:serialization-length
   ()
   (+
    ;; string _uploader_queue
    4 (length _uploader_queue)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _uploader_queue
       (write-long (length _uploader_queue) s) (princ _uploader_queue s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _uploader_queue
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _uploader_queue (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass gizmo_msgs::UploaderStatus
  :super ros::object
  :slots ())

(setf (get gizmo_msgs::UploaderStatus :md5sum-) "45a8d1674409243c4a0a0fc18fd55f7d")
(setf (get gizmo_msgs::UploaderStatus :datatype-) "gizmo_msgs/UploaderStatus")
(setf (get gizmo_msgs::UploaderStatus :request) gizmo_msgs::UploaderStatusRequest)
(setf (get gizmo_msgs::UploaderStatus :response) gizmo_msgs::UploaderStatusResponse)

(defmethod gizmo_msgs::UploaderStatusRequest
  (:response () (instance gizmo_msgs::UploaderStatusResponse :init)))

(setf (get gizmo_msgs::UploaderStatusRequest :md5sum-) "45a8d1674409243c4a0a0fc18fd55f7d")
(setf (get gizmo_msgs::UploaderStatusRequest :datatype-) "gizmo_msgs/UploaderStatusRequest")
(setf (get gizmo_msgs::UploaderStatusRequest :definition-)
      "---
# In test environment, we let the cloud uploader pick its own path for the
# uploader queue.  In normal operation this will point to
# /mayfield/something/something
string uploader_queue

")

(setf (get gizmo_msgs::UploaderStatusResponse :md5sum-) "45a8d1674409243c4a0a0fc18fd55f7d")
(setf (get gizmo_msgs::UploaderStatusResponse :datatype-) "gizmo_msgs/UploaderStatusResponse")
(setf (get gizmo_msgs::UploaderStatusResponse :definition-)
      "---
# In test environment, we let the cloud uploader pick its own path for the
# uploader queue.  In normal operation this will point to
# /mayfield/something/something
string uploader_queue

")



(provide :gizmo_msgs/UploaderStatus "45a8d1674409243c4a0a0fc18fd55f7d")


