// Auto-generated. Do not edit!

// (in-package mobile_base_driver.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let BatteryCapacity = require('./BatteryCapacity.js');

//-----------------------------------------------------------

class Power {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.adc_channels = null;
      this.v_dock = null;
      this.v_batt = null;
      this.i_batt = null;
      this.t_batt = null;
      this.dock_present = null;
      this.is_charging = null;
      this.power_button_pressed = null;
      this.battery = null;
    }
    else {
      if (initObj.hasOwnProperty('adc_channels')) {
        this.adc_channels = initObj.adc_channels
      }
      else {
        this.adc_channels = [];
      }
      if (initObj.hasOwnProperty('v_dock')) {
        this.v_dock = initObj.v_dock
      }
      else {
        this.v_dock = 0.0;
      }
      if (initObj.hasOwnProperty('v_batt')) {
        this.v_batt = initObj.v_batt
      }
      else {
        this.v_batt = 0.0;
      }
      if (initObj.hasOwnProperty('i_batt')) {
        this.i_batt = initObj.i_batt
      }
      else {
        this.i_batt = 0.0;
      }
      if (initObj.hasOwnProperty('t_batt')) {
        this.t_batt = initObj.t_batt
      }
      else {
        this.t_batt = 0.0;
      }
      if (initObj.hasOwnProperty('dock_present')) {
        this.dock_present = initObj.dock_present
      }
      else {
        this.dock_present = false;
      }
      if (initObj.hasOwnProperty('is_charging')) {
        this.is_charging = initObj.is_charging
      }
      else {
        this.is_charging = false;
      }
      if (initObj.hasOwnProperty('power_button_pressed')) {
        this.power_button_pressed = initObj.power_button_pressed
      }
      else {
        this.power_button_pressed = false;
      }
      if (initObj.hasOwnProperty('battery')) {
        this.battery = initObj.battery
      }
      else {
        this.battery = new BatteryCapacity();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Power
    // Serialize message field [adc_channels]
    bufferOffset = _arraySerializer.uint16(obj.adc_channels, buffer, bufferOffset, null);
    // Serialize message field [v_dock]
    bufferOffset = _serializer.float32(obj.v_dock, buffer, bufferOffset);
    // Serialize message field [v_batt]
    bufferOffset = _serializer.float32(obj.v_batt, buffer, bufferOffset);
    // Serialize message field [i_batt]
    bufferOffset = _serializer.float32(obj.i_batt, buffer, bufferOffset);
    // Serialize message field [t_batt]
    bufferOffset = _serializer.float32(obj.t_batt, buffer, bufferOffset);
    // Serialize message field [dock_present]
    bufferOffset = _serializer.bool(obj.dock_present, buffer, bufferOffset);
    // Serialize message field [is_charging]
    bufferOffset = _serializer.bool(obj.is_charging, buffer, bufferOffset);
    // Serialize message field [power_button_pressed]
    bufferOffset = _serializer.bool(obj.power_button_pressed, buffer, bufferOffset);
    // Serialize message field [battery]
    bufferOffset = BatteryCapacity.serialize(obj.battery, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Power
    let len;
    let data = new Power(null);
    // Deserialize message field [adc_channels]
    data.adc_channels = _arrayDeserializer.uint16(buffer, bufferOffset, null)
    // Deserialize message field [v_dock]
    data.v_dock = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [v_batt]
    data.v_batt = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [i_batt]
    data.i_batt = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [t_batt]
    data.t_batt = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [dock_present]
    data.dock_present = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_charging]
    data.is_charging = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [power_button_pressed]
    data.power_button_pressed = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [battery]
    data.battery = BatteryCapacity.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 2 * object.adc_channels.length;
    return length + 27;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mobile_base_driver/Power';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '64de407003b036b2169e0188bd020101';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16[] adc_channels
    float32 v_dock
    float32 v_batt
    float32 i_batt
    float32 t_batt
    bool dock_present
    bool is_charging
    bool power_button_pressed
    BatteryCapacity battery
    
    ================================================================================
    MSG: mobile_base_driver/BatteryCapacity
    int16 mAh
    int8 pct
    int8 rounded_pct # capacity percentage estimate, rounded to the nearest 5 and
                     # subjected to hysteresis so it can only change if the value has
                     # changed by at least 5
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Power(null);
    if (msg.adc_channels !== undefined) {
      resolved.adc_channels = msg.adc_channels;
    }
    else {
      resolved.adc_channels = []
    }

    if (msg.v_dock !== undefined) {
      resolved.v_dock = msg.v_dock;
    }
    else {
      resolved.v_dock = 0.0
    }

    if (msg.v_batt !== undefined) {
      resolved.v_batt = msg.v_batt;
    }
    else {
      resolved.v_batt = 0.0
    }

    if (msg.i_batt !== undefined) {
      resolved.i_batt = msg.i_batt;
    }
    else {
      resolved.i_batt = 0.0
    }

    if (msg.t_batt !== undefined) {
      resolved.t_batt = msg.t_batt;
    }
    else {
      resolved.t_batt = 0.0
    }

    if (msg.dock_present !== undefined) {
      resolved.dock_present = msg.dock_present;
    }
    else {
      resolved.dock_present = false
    }

    if (msg.is_charging !== undefined) {
      resolved.is_charging = msg.is_charging;
    }
    else {
      resolved.is_charging = false
    }

    if (msg.power_button_pressed !== undefined) {
      resolved.power_button_pressed = msg.power_button_pressed;
    }
    else {
      resolved.power_button_pressed = false
    }

    if (msg.battery !== undefined) {
      resolved.battery = BatteryCapacity.Resolve(msg.battery)
    }
    else {
      resolved.battery = new BatteryCapacity()
    }

    return resolved;
    }
};

module.exports = Power;
