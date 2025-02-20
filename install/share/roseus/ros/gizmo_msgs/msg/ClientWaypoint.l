;; Auto-generated. Do not edit!


(when (boundp 'gizmo_msgs::ClientWaypoint)
  (if (not (find-package "GIZMO_MSGS"))
    (make-package "GIZMO_MSGS"))
  (shadow 'ClientWaypoint (find-package "GIZMO_MSGS")))
(unless (find-package "GIZMO_MSGS::CLIENTWAYPOINT")
  (make-package "GIZMO_MSGS::CLIENTWAYPOINT"))

(in-package "ROS")
;;//! \htmlinclude ClientWaypoint.msg.html


(defclass gizmo_msgs::ClientWaypoint
  :super ros::object
  :slots (_request_id _waypoint_uuid ))

(defmethod gizmo_msgs::ClientWaypoint
  (:init
   (&key
    ((:request_id __request_id) "")
    ((:waypoint_uuid __waypoint_uuid) "")
    )
   (send-super :init)
   (setq _request_id (string __request_id))
   (setq _waypoint_uuid (string __waypoint_uuid))
   self)
  (:request_id
   (&optional __request_id)
   (if __request_id (setq _request_id __request_id)) _request_id)
  (:waypoint_uuid
   (&optional __waypoint_uuid)
   (if __waypoint_uuid (setq _waypoint_uuid __waypoint_uuid)) _waypoint_uuid)
  (:serialization-length
   ()
   (+
    ;; string _request_id
    4 (length _request_id)
    ;; string _waypoint_uuid
    4 (length _waypoint_uuid)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _request_id
       (write-long (length _request_id) s) (princ _request_id s)
     ;; string _waypoint_uuid
       (write-long (length _waypoint_uuid) s) (princ _waypoint_uuid s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _request_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _request_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _waypoint_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _waypoint_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get gizmo_msgs::ClientWaypoint :md5sum-) "8c9794c65e35c44ec180ec268a6f377c")
(setf (get gizmo_msgs::ClientWaypoint :datatype-) "gizmo_msgs/ClientWaypoint")
(setf (get gizmo_msgs::ClientWaypoint :definition-)
      "string request_id
string waypoint_uuid

")



(provide :gizmo_msgs/ClientWaypoint "8c9794c65e35c44ec180ec268a6f377c")


