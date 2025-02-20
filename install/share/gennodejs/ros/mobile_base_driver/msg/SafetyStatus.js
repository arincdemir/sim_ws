// Auto-generated. Do not edit!

// (in-package mobile_base_driver.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class SafetyStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SafetyStatus
    // Serialize message field [status]
    bufferOffset = _serializer.uint32(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SafetyStatus
    let len;
    let data = new SafetyStatus(null);
    // Deserialize message field [status]
    data.status = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mobile_base_driver/SafetyStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd125b2e4a510271c37ef066dc9d6c0de';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # bit positions, same as in iris_comm
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SafetyStatus(null);
    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    return resolved;
    }
};

// Constants for message
SafetyStatus.Constants = {
  HB_BP: 0,
  CFHW_BP: 1,
  CF0_BP: 2,
  CF1_BP: 3,
  CF2_BP: 4,
  CF3_BP: 5,
  CF4_BP: 6,
  CF5_BP: 7,
  DP_BP: 8,
  BPR_BP: 10,
  BPM_BP: 11,
  BPL_BP: 12,
  CLL_BP: 13,
}

module.exports = SafetyStatus;
