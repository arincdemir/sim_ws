;; Auto-generated. Do not edit!


(when (boundp 'mobile_base_driver::SafetyStatus)
  (if (not (find-package "MOBILE_BASE_DRIVER"))
    (make-package "MOBILE_BASE_DRIVER"))
  (shadow 'SafetyStatus (find-package "MOBILE_BASE_DRIVER")))
(unless (find-package "MOBILE_BASE_DRIVER::SAFETYSTATUS")
  (make-package "MOBILE_BASE_DRIVER::SAFETYSTATUS"))

(in-package "ROS")
;;//! \htmlinclude SafetyStatus.msg.html


(intern "*HB_BP*" (find-package "MOBILE_BASE_DRIVER::SAFETYSTATUS"))
(shadow '*HB_BP* (find-package "MOBILE_BASE_DRIVER::SAFETYSTATUS"))
(defconstant mobile_base_driver::SafetyStatus::*HB_BP* 0)
(intern "*CFHW_BP*" (find-package "MOBILE_BASE_DRIVER::SAFETYSTATUS"))
(shadow '*CFHW_BP* (find-package "MOBILE_BASE_DRIVER::SAFETYSTATUS"))
(defconstant mobile_base_driver::SafetyStatus::*CFHW_BP* 1)
(intern "*CF0_BP*" (find-package "MOBILE_BASE_DRIVER::SAFETYSTATUS"))
(shadow '*CF0_BP* (find-package "MOBILE_BASE_DRIVER::SAFETYSTATUS"))
(defconstant mobile_base_driver::SafetyStatus::*CF0_BP* 2)
(intern "*CF1_BP*" (find-package "MOBILE_BASE_DRIVER::SAFETYSTATUS"))
(shadow '*CF1_BP* (find-package "MOBILE_BASE_DRIVER::SAFETYSTATUS"))
(defconstant mobile_base_driver::SafetyStatus::*CF1_BP* 3)
(intern "*CF2_BP*" (find-package "MOBILE_BASE_DRIVER::SAFETYSTATUS"))
(shadow '*CF2_BP* (find-package "MOBILE_BASE_DRIVER::SAFETYSTATUS"))
(defconstant mobile_base_driver::SafetyStatus::*CF2_BP* 4)
(intern "*CF3_BP*" (find-package "MOBILE_BASE_DRIVER::SAFETYSTATUS"))
(shadow '*CF3_BP* (find-package "MOBILE_BASE_DRIVER::SAFETYSTATUS"))
(defconstant mobile_base_driver::SafetyStatus::*CF3_BP* 5)
(intern "*CF4_BP*" (find-package "MOBILE_BASE_DRIVER::SAFETYSTATUS"))
(shadow '*CF4_BP* (find-package "MOBILE_BASE_DRIVER::SAFETYSTATUS"))
(defconstant mobile_base_driver::SafetyStatus::*CF4_BP* 6)
(intern "*CF5_BP*" (find-package "MOBILE_BASE_DRIVER::SAFETYSTATUS"))
(shadow '*CF5_BP* (find-package "MOBILE_BASE_DRIVER::SAFETYSTATUS"))
(defconstant mobile_base_driver::SafetyStatus::*CF5_BP* 7)
(intern "*DP_BP*" (find-package "MOBILE_BASE_DRIVER::SAFETYSTATUS"))
(shadow '*DP_BP* (find-package "MOBILE_BASE_DRIVER::SAFETYSTATUS"))
(defconstant mobile_base_driver::SafetyStatus::*DP_BP* 8)
(intern "*BPR_BP*" (find-package "MOBILE_BASE_DRIVER::SAFETYSTATUS"))
(shadow '*BPR_BP* (find-package "MOBILE_BASE_DRIVER::SAFETYSTATUS"))
(defconstant mobile_base_driver::SafetyStatus::*BPR_BP* 10)
(intern "*BPM_BP*" (find-package "MOBILE_BASE_DRIVER::SAFETYSTATUS"))
(shadow '*BPM_BP* (find-package "MOBILE_BASE_DRIVER::SAFETYSTATUS"))
(defconstant mobile_base_driver::SafetyStatus::*BPM_BP* 11)
(intern "*BPL_BP*" (find-package "MOBILE_BASE_DRIVER::SAFETYSTATUS"))
(shadow '*BPL_BP* (find-package "MOBILE_BASE_DRIVER::SAFETYSTATUS"))
(defconstant mobile_base_driver::SafetyStatus::*BPL_BP* 12)
(intern "*CLL_BP*" (find-package "MOBILE_BASE_DRIVER::SAFETYSTATUS"))
(shadow '*CLL_BP* (find-package "MOBILE_BASE_DRIVER::SAFETYSTATUS"))
(defconstant mobile_base_driver::SafetyStatus::*CLL_BP* 13)

(defun mobile_base_driver::SafetyStatus-to-symbol (const)
  (cond
        ((= const 0) 'mobile_base_driver::SafetyStatus::*HB_bp*)
        ((= const 1) 'mobile_base_driver::SafetyStatus::*CFHW_bp*)
        ((= const 2) 'mobile_base_driver::SafetyStatus::*CF0_bp*)
        ((= const 3) 'mobile_base_driver::SafetyStatus::*CF1_bp*)
        ((= const 4) 'mobile_base_driver::SafetyStatus::*CF2_bp*)
        ((= const 5) 'mobile_base_driver::SafetyStatus::*CF3_bp*)
        ((= const 6) 'mobile_base_driver::SafetyStatus::*CF4_bp*)
        ((= const 7) 'mobile_base_driver::SafetyStatus::*CF5_bp*)
        ((= const 8) 'mobile_base_driver::SafetyStatus::*DP_bp*)
        ((= const 10) 'mobile_base_driver::SafetyStatus::*BPR_bp*)
        ((= const 11) 'mobile_base_driver::SafetyStatus::*BPM_bp*)
        ((= const 12) 'mobile_base_driver::SafetyStatus::*BPL_bp*)
        ((= const 13) 'mobile_base_driver::SafetyStatus::*CLL_bp*)
        (t nil)))

(defclass mobile_base_driver::SafetyStatus
  :super ros::object
  :slots (_status ))

(defmethod mobile_base_driver::SafetyStatus
  (:init
   (&key
    ((:status __status) 0)
    )
   (send-super :init)
   (setq _status (round __status))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; uint32 _status
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _status
       (write-long _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get mobile_base_driver::SafetyStatus :md5sum-) "d125b2e4a510271c37ef066dc9d6c0de")
(setf (get mobile_base_driver::SafetyStatus :datatype-) "mobile_base_driver/SafetyStatus")
(setf (get mobile_base_driver::SafetyStatus :definition-)
      "# bit positions, same as in iris_comm
int8 HB_bp   = 0  			# Heartbeat
int8 CFHW_bp = 1			# Cliff to Motor Control HW
int8 CF0_bp  = 2			# Cliff 0
int8 CF1_bp  = 3			# Cliff 1
int8 CF2_bp  = 4			# Cliff 2
int8 CF3_bp  = 5			# Cliff 3
int8 CF4_bp  = 6			# Cliff 4
int8 CF5_bp  = 7			# Cliff 5
int8 DP_bp  = 8			# Drop Right and Left
int8 BPR_bp  = 10			# Bump Right
int8 BPM_bp  = 11			# Bump Middle
int8 BPL_bp  = 12			# Bump Left
int8 CLL_bp  = 13			# Clothesline

uint32 status

")



(provide :mobile_base_driver/SafetyStatus "d125b2e4a510271c37ef066dc9d6c0de")


