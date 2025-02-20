;; Auto-generated. Do not edit!


(when (boundp 'kuri_person_tracking::BoundingBoxes)
  (if (not (find-package "KURI_PERSON_TRACKING"))
    (make-package "KURI_PERSON_TRACKING"))
  (shadow 'BoundingBoxes (find-package "KURI_PERSON_TRACKING")))
(unless (find-package "KURI_PERSON_TRACKING::BOUNDINGBOXES")
  (make-package "KURI_PERSON_TRACKING::BOUNDINGBOXES"))

(in-package "ROS")
;;//! \htmlinclude BoundingBoxes.msg.html


(defclass kuri_person_tracking::BoundingBoxes
  :super ros::object
  :slots (_bounding_boxes ))

(defmethod kuri_person_tracking::BoundingBoxes
  (:init
   (&key
    ((:bounding_boxes __bounding_boxes) ())
    )
   (send-super :init)
   (setq _bounding_boxes __bounding_boxes)
   self)
  (:bounding_boxes
   (&rest __bounding_boxes)
   (if (keywordp (car __bounding_boxes))
       (send* _bounding_boxes __bounding_boxes)
     (progn
       (if __bounding_boxes (setq _bounding_boxes (car __bounding_boxes)))
       _bounding_boxes)))
  (:serialization-length
   ()
   (+
    ;; kuri_person_tracking/BoundingBox[] _bounding_boxes
    (apply #'+ (send-all _bounding_boxes :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; kuri_person_tracking/BoundingBox[] _bounding_boxes
     (write-long (length _bounding_boxes) s)
     (dolist (elem _bounding_boxes)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; kuri_person_tracking/BoundingBox[] _bounding_boxes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _bounding_boxes (let (r) (dotimes (i n) (push (instance kuri_person_tracking::BoundingBox :init) r)) r))
     (dolist (elem- _bounding_boxes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get kuri_person_tracking::BoundingBoxes :md5sum-) "ab6a6484ee45d71c06061182bc5e3905")
(setf (get kuri_person_tracking::BoundingBoxes :datatype-) "kuri_person_tracking/BoundingBoxes")
(setf (get kuri_person_tracking::BoundingBoxes :definition-)
      "BoundingBox[] bounding_boxes
================================================================================
MSG: kuri_person_tracking/BoundingBox
float64 xmin
float64 ymin
float64 xmax
float64 ymax
float64 probability

")



(provide :kuri_person_tracking/BoundingBoxes "ab6a6484ee45d71c06061182bc5e3905")


