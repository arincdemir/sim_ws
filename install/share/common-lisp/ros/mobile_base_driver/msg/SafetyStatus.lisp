; Auto-generated. Do not edit!


(cl:in-package mobile_base_driver-msg)


;//! \htmlinclude SafetyStatus.msg.html

(cl:defclass <SafetyStatus> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:integer
    :initform 0))
)

(cl:defclass SafetyStatus (<SafetyStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SafetyStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SafetyStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mobile_base_driver-msg:<SafetyStatus> is deprecated: use mobile_base_driver-msg:SafetyStatus instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <SafetyStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mobile_base_driver-msg:status-val is deprecated.  Use mobile_base_driver-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SafetyStatus>)))
    "Constants for message type '<SafetyStatus>"
  '((:HB_BP . 0)
    (:CFHW_BP . 1)
    (:CF0_BP . 2)
    (:CF1_BP . 3)
    (:CF2_BP . 4)
    (:CF3_BP . 5)
    (:CF4_BP . 6)
    (:CF5_BP . 7)
    (:DP_BP . 8)
    (:BPR_BP . 10)
    (:BPM_BP . 11)
    (:BPL_BP . 12)
    (:CLL_BP . 13))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SafetyStatus)))
    "Constants for message type 'SafetyStatus"
  '((:HB_BP . 0)
    (:CFHW_BP . 1)
    (:CF0_BP . 2)
    (:CF1_BP . 3)
    (:CF2_BP . 4)
    (:CF3_BP . 5)
    (:CF4_BP . 6)
    (:CF5_BP . 7)
    (:DP_BP . 8)
    (:BPR_BP . 10)
    (:BPM_BP . 11)
    (:BPL_BP . 12)
    (:CLL_BP . 13))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SafetyStatus>) ostream)
  "Serializes a message object of type '<SafetyStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'status)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SafetyStatus>) istream)
  "Deserializes a message object of type '<SafetyStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'status)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SafetyStatus>)))
  "Returns string type for a message object of type '<SafetyStatus>"
  "mobile_base_driver/SafetyStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SafetyStatus)))
  "Returns string type for a message object of type 'SafetyStatus"
  "mobile_base_driver/SafetyStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SafetyStatus>)))
  "Returns md5sum for a message object of type '<SafetyStatus>"
  "d125b2e4a510271c37ef066dc9d6c0de")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SafetyStatus)))
  "Returns md5sum for a message object of type 'SafetyStatus"
  "d125b2e4a510271c37ef066dc9d6c0de")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SafetyStatus>)))
  "Returns full string definition for message of type '<SafetyStatus>"
  (cl:format cl:nil "# bit positions, same as in iris_comm~%int8 HB_bp   = 0  			# Heartbeat~%int8 CFHW_bp = 1			# Cliff to Motor Control HW~%int8 CF0_bp  = 2			# Cliff 0~%int8 CF1_bp  = 3			# Cliff 1~%int8 CF2_bp  = 4			# Cliff 2~%int8 CF3_bp  = 5			# Cliff 3~%int8 CF4_bp  = 6			# Cliff 4~%int8 CF5_bp  = 7			# Cliff 5~%int8 DP_bp  = 8			# Drop Right and Left~%int8 BPR_bp  = 10			# Bump Right~%int8 BPM_bp  = 11			# Bump Middle~%int8 BPL_bp  = 12			# Bump Left~%int8 CLL_bp  = 13			# Clothesline~%~%uint32 status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SafetyStatus)))
  "Returns full string definition for message of type 'SafetyStatus"
  (cl:format cl:nil "# bit positions, same as in iris_comm~%int8 HB_bp   = 0  			# Heartbeat~%int8 CFHW_bp = 1			# Cliff to Motor Control HW~%int8 CF0_bp  = 2			# Cliff 0~%int8 CF1_bp  = 3			# Cliff 1~%int8 CF2_bp  = 4			# Cliff 2~%int8 CF3_bp  = 5			# Cliff 3~%int8 CF4_bp  = 6			# Cliff 4~%int8 CF5_bp  = 7			# Cliff 5~%int8 DP_bp  = 8			# Drop Right and Left~%int8 BPR_bp  = 10			# Bump Right~%int8 BPM_bp  = 11			# Bump Middle~%int8 BPL_bp  = 12			# Bump Left~%int8 CLL_bp  = 13			# Clothesline~%~%uint32 status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SafetyStatus>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SafetyStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'SafetyStatus
    (cl:cons ':status (status msg))
))
