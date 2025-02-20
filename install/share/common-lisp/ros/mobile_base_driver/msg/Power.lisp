; Auto-generated. Do not edit!


(cl:in-package mobile_base_driver-msg)


;//! \htmlinclude Power.msg.html

(cl:defclass <Power> (roslisp-msg-protocol:ros-message)
  ((adc_channels
    :reader adc_channels
    :initarg :adc_channels
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (v_dock
    :reader v_dock
    :initarg :v_dock
    :type cl:float
    :initform 0.0)
   (v_batt
    :reader v_batt
    :initarg :v_batt
    :type cl:float
    :initform 0.0)
   (i_batt
    :reader i_batt
    :initarg :i_batt
    :type cl:float
    :initform 0.0)
   (t_batt
    :reader t_batt
    :initarg :t_batt
    :type cl:float
    :initform 0.0)
   (dock_present
    :reader dock_present
    :initarg :dock_present
    :type cl:boolean
    :initform cl:nil)
   (is_charging
    :reader is_charging
    :initarg :is_charging
    :type cl:boolean
    :initform cl:nil)
   (power_button_pressed
    :reader power_button_pressed
    :initarg :power_button_pressed
    :type cl:boolean
    :initform cl:nil)
   (battery
    :reader battery
    :initarg :battery
    :type mobile_base_driver-msg:BatteryCapacity
    :initform (cl:make-instance 'mobile_base_driver-msg:BatteryCapacity)))
)

(cl:defclass Power (<Power>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Power>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Power)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mobile_base_driver-msg:<Power> is deprecated: use mobile_base_driver-msg:Power instead.")))

(cl:ensure-generic-function 'adc_channels-val :lambda-list '(m))
(cl:defmethod adc_channels-val ((m <Power>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mobile_base_driver-msg:adc_channels-val is deprecated.  Use mobile_base_driver-msg:adc_channels instead.")
  (adc_channels m))

(cl:ensure-generic-function 'v_dock-val :lambda-list '(m))
(cl:defmethod v_dock-val ((m <Power>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mobile_base_driver-msg:v_dock-val is deprecated.  Use mobile_base_driver-msg:v_dock instead.")
  (v_dock m))

(cl:ensure-generic-function 'v_batt-val :lambda-list '(m))
(cl:defmethod v_batt-val ((m <Power>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mobile_base_driver-msg:v_batt-val is deprecated.  Use mobile_base_driver-msg:v_batt instead.")
  (v_batt m))

(cl:ensure-generic-function 'i_batt-val :lambda-list '(m))
(cl:defmethod i_batt-val ((m <Power>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mobile_base_driver-msg:i_batt-val is deprecated.  Use mobile_base_driver-msg:i_batt instead.")
  (i_batt m))

(cl:ensure-generic-function 't_batt-val :lambda-list '(m))
(cl:defmethod t_batt-val ((m <Power>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mobile_base_driver-msg:t_batt-val is deprecated.  Use mobile_base_driver-msg:t_batt instead.")
  (t_batt m))

(cl:ensure-generic-function 'dock_present-val :lambda-list '(m))
(cl:defmethod dock_present-val ((m <Power>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mobile_base_driver-msg:dock_present-val is deprecated.  Use mobile_base_driver-msg:dock_present instead.")
  (dock_present m))

(cl:ensure-generic-function 'is_charging-val :lambda-list '(m))
(cl:defmethod is_charging-val ((m <Power>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mobile_base_driver-msg:is_charging-val is deprecated.  Use mobile_base_driver-msg:is_charging instead.")
  (is_charging m))

(cl:ensure-generic-function 'power_button_pressed-val :lambda-list '(m))
(cl:defmethod power_button_pressed-val ((m <Power>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mobile_base_driver-msg:power_button_pressed-val is deprecated.  Use mobile_base_driver-msg:power_button_pressed instead.")
  (power_button_pressed m))

(cl:ensure-generic-function 'battery-val :lambda-list '(m))
(cl:defmethod battery-val ((m <Power>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mobile_base_driver-msg:battery-val is deprecated.  Use mobile_base_driver-msg:battery instead.")
  (battery m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Power>) ostream)
  "Serializes a message object of type '<Power>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'adc_channels))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream))
   (cl:slot-value msg 'adc_channels))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'v_dock))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'v_batt))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'i_batt))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 't_batt))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'dock_present) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_charging) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'power_button_pressed) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'battery) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Power>) istream)
  "Deserializes a message object of type '<Power>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'adc_channels) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'adc_channels)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'v_dock) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'v_batt) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'i_batt) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 't_batt) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'dock_present) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_charging) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'power_button_pressed) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'battery) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Power>)))
  "Returns string type for a message object of type '<Power>"
  "mobile_base_driver/Power")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Power)))
  "Returns string type for a message object of type 'Power"
  "mobile_base_driver/Power")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Power>)))
  "Returns md5sum for a message object of type '<Power>"
  "64de407003b036b2169e0188bd020101")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Power)))
  "Returns md5sum for a message object of type 'Power"
  "64de407003b036b2169e0188bd020101")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Power>)))
  "Returns full string definition for message of type '<Power>"
  (cl:format cl:nil "uint16[] adc_channels~%float32 v_dock~%float32 v_batt~%float32 i_batt~%float32 t_batt~%bool dock_present~%bool is_charging~%bool power_button_pressed~%BatteryCapacity battery~%~%================================================================================~%MSG: mobile_base_driver/BatteryCapacity~%int16 mAh~%int8 pct~%int8 rounded_pct # capacity percentage estimate, rounded to the nearest 5 and~%                 # subjected to hysteresis so it can only change if the value has~%                 # changed by at least 5~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Power)))
  "Returns full string definition for message of type 'Power"
  (cl:format cl:nil "uint16[] adc_channels~%float32 v_dock~%float32 v_batt~%float32 i_batt~%float32 t_batt~%bool dock_present~%bool is_charging~%bool power_button_pressed~%BatteryCapacity battery~%~%================================================================================~%MSG: mobile_base_driver/BatteryCapacity~%int16 mAh~%int8 pct~%int8 rounded_pct # capacity percentage estimate, rounded to the nearest 5 and~%                 # subjected to hysteresis so it can only change if the value has~%                 # changed by at least 5~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Power>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'adc_channels) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
     4
     4
     4
     4
     1
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'battery))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Power>))
  "Converts a ROS message object to a list"
  (cl:list 'Power
    (cl:cons ':adc_channels (adc_channels msg))
    (cl:cons ':v_dock (v_dock msg))
    (cl:cons ':v_batt (v_batt msg))
    (cl:cons ':i_batt (i_batt msg))
    (cl:cons ':t_batt (t_batt msg))
    (cl:cons ':dock_present (dock_present msg))
    (cl:cons ':is_charging (is_charging msg))
    (cl:cons ':power_button_pressed (power_button_pressed msg))
    (cl:cons ':battery (battery msg))
))
