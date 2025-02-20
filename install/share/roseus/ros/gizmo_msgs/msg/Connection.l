;; Auto-generated. Do not edit!


(when (boundp 'gizmo_msgs::Connection)
  (if (not (find-package "GIZMO_MSGS"))
    (make-package "GIZMO_MSGS"))
  (shadow 'Connection (find-package "GIZMO_MSGS")))
(unless (find-package "GIZMO_MSGS::CONNECTION")
  (make-package "GIZMO_MSGS::CONNECTION"))

(in-package "ROS")
;;//! \htmlinclude Connection.msg.html


(defclass gizmo_msgs::Connection
  :super ros::object
  :slots (_is_connected _peer_id _are_all_peers_gone ))

(defmethod gizmo_msgs::Connection
  (:init
   (&key
    ((:is_connected __is_connected) nil)
    ((:peer_id __peer_id) "")
    ((:are_all_peers_gone __are_all_peers_gone) nil)
    )
   (send-super :init)
   (setq _is_connected __is_connected)
   (setq _peer_id (string __peer_id))
   (setq _are_all_peers_gone __are_all_peers_gone)
   self)
  (:is_connected
   (&optional (__is_connected :null))
   (if (not (eq __is_connected :null)) (setq _is_connected __is_connected)) _is_connected)
  (:peer_id
   (&optional __peer_id)
   (if __peer_id (setq _peer_id __peer_id)) _peer_id)
  (:are_all_peers_gone
   (&optional (__are_all_peers_gone :null))
   (if (not (eq __are_all_peers_gone :null)) (setq _are_all_peers_gone __are_all_peers_gone)) _are_all_peers_gone)
  (:serialization-length
   ()
   (+
    ;; bool _is_connected
    1
    ;; string _peer_id
    4 (length _peer_id)
    ;; bool _are_all_peers_gone
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _is_connected
       (if _is_connected (write-byte -1 s) (write-byte 0 s))
     ;; string _peer_id
       (write-long (length _peer_id) s) (princ _peer_id s)
     ;; bool _are_all_peers_gone
       (if _are_all_peers_gone (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _is_connected
     (setq _is_connected (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _peer_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _peer_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _are_all_peers_gone
     (setq _are_all_peers_gone (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get gizmo_msgs::Connection :md5sum-) "4f822d32f1144ffda815fe88d48597f4")
(setf (get gizmo_msgs::Connection :datatype-) "gizmo_msgs/Connection")
(setf (get gizmo_msgs::Connection :definition-)
      "bool is_connected
string peer_id
bool are_all_peers_gone

")



(provide :gizmo_msgs/Connection "4f822d32f1144ffda815fe88d48597f4")


