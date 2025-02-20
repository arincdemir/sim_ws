;; Auto-generated. Do not edit!


(when (boundp 'kuri_person_tracking::BoundingBox)
  (if (not (find-package "KURI_PERSON_TRACKING"))
    (make-package "KURI_PERSON_TRACKING"))
  (shadow 'BoundingBox (find-package "KURI_PERSON_TRACKING")))
(unless (find-package "KURI_PERSON_TRACKING::BOUNDINGBOX")
  (make-package "KURI_PERSON_TRACKING::BOUNDINGBOX"))

(in-package "ROS")
;;//! \htmlinclude BoundingBox.msg.html


(defclass kuri_person_tracking::BoundingBox
  :super ros::object
  :slots (_xmin _ymin _xmax _ymax _probability ))

(defmethod kuri_person_tracking::BoundingBox
  (:init
   (&key
    ((:xmin __xmin) 0.0)
    ((:ymin __ymin) 0.0)
    ((:xmax __xmax) 0.0)
    ((:ymax __ymax) 0.0)
    ((:probability __probability) 0.0)
    )
   (send-super :init)
   (setq _xmin (float __xmin))
   (setq _ymin (float __ymin))
   (setq _xmax (float __xmax))
   (setq _ymax (float __ymax))
   (setq _probability (float __probability))
   self)
  (:xmin
   (&optional __xmin)
   (if __xmin (setq _xmin __xmin)) _xmin)
  (:ymin
   (&optional __ymin)
   (if __ymin (setq _ymin __ymin)) _ymin)
  (:xmax
   (&optional __xmax)
   (if __xmax (setq _xmax __xmax)) _xmax)
  (:ymax
   (&optional __ymax)
   (if __ymax (setq _ymax __ymax)) _ymax)
  (:probability
   (&optional __probability)
   (if __probability (setq _probability __probability)) _probability)
  (:serialization-length
   ()
   (+
    ;; float64 _xmin
    8
    ;; float64 _ymin
    8
    ;; float64 _xmax
    8
    ;; float64 _ymax
    8
    ;; float64 _probability
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _xmin
       (sys::poke _xmin (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ymin
       (sys::poke _ymin (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _xmax
       (sys::poke _xmax (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ymax
       (sys::poke _ymax (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _probability
       (sys::poke _probability (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _xmin
     (setq _xmin (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ymin
     (setq _ymin (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _xmax
     (setq _xmax (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ymax
     (setq _ymax (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _probability
     (setq _probability (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get kuri_person_tracking::BoundingBox :md5sum-) "43b9cd27bc53c1342697bf90466c07d1")
(setf (get kuri_person_tracking::BoundingBox :datatype-) "kuri_person_tracking/BoundingBox")
(setf (get kuri_person_tracking::BoundingBox :definition-)
      "float64 xmin
float64 ymin
float64 xmax
float64 ymax
float64 probability

")



(provide :kuri_person_tracking/BoundingBox "43b9cd27bc53c1342697bf90466c07d1")


