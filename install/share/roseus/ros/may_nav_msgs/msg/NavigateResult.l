;; Auto-generated. Do not edit!


(when (boundp 'may_nav_msgs::NavigateResult)
  (if (not (find-package "MAY_NAV_MSGS"))
    (make-package "MAY_NAV_MSGS"))
  (shadow 'NavigateResult (find-package "MAY_NAV_MSGS")))
(unless (find-package "MAY_NAV_MSGS::NAVIGATERESULT")
  (make-package "MAY_NAV_MSGS::NAVIGATERESULT"))

(in-package "ROS")
;;//! \htmlinclude NavigateResult.msg.html


(defclass may_nav_msgs::NavigateResult
  :super ros::object
  :slots ())

(defmethod may_nav_msgs::NavigateResult
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

(setf (get may_nav_msgs::NavigateResult :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get may_nav_msgs::NavigateResult :datatype-) "may_nav_msgs/NavigateResult")
(setf (get may_nav_msgs::NavigateResult :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

")



(provide :may_nav_msgs/NavigateResult "d41d8cd98f00b204e9800998ecf8427e")


