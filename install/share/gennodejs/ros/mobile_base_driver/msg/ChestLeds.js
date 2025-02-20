// Auto-generated. Do not edit!

// (in-package mobile_base_driver.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Led = require('./Led.js');

//-----------------------------------------------------------

class ChestLeds {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.leds = null;
    }
    else {
      if (initObj.hasOwnProperty('leds')) {
        this.leds = initObj.leds
      }
      else {
        this.leds = new Array(15).fill(new Led());
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ChestLeds
    // Check that the constant length array field [leds] has the right length
    if (obj.leds.length !== 15) {
      throw new Error('Unable to serialize array field leds - length must be 15')
    }
    // Serialize message field [leds]
    obj.leds.forEach((val) => {
      bufferOffset = Led.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ChestLeds
    let len;
    let data = new ChestLeds(null);
    // Deserialize message field [leds]
    len = 15;
    data.leds = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.leds[i] = Led.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    return 3;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mobile_base_driver/ChestLeds';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ef09340f131b3099106bbb45d67c5ff0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Provide chest LEDs frame
    # Index 0 is the center LED
    # With 0 degrees straight up increasing clockwise
    
    # Inner ring
    # Index 1 : 150 degrees
    # Index 2 : 210 degrees
    # Index 3 : 270 degrees
    # Index 4 : 330 degrees
    # Index 5 : 30 degrees
    # Index 6 : 90 degrees
    
    # Outter ring
    # Index 13 : 22 degrees
    # Index 14 : 67 degrees
    # Index 7  : 112 degrees
    # Index 8  : 157 degrees
    # Index 9  : 202 degrees
    # Index 10 : 247 degrees
    # Index 11 : 292 degrees
    # Index 12 : 337 degrees
    
    Led[15]    leds
    
    ================================================================================
    MSG: mobile_base_driver/Led
    # Provides a three color LED state
    
    uint8 red
    uint8 green
    uint8 blue
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ChestLeds(null);
    if (msg.leds !== undefined) {
      resolved.leds = new Array(15)
      for (let i = 0; i < resolved.leds.length; ++i) {
        if (msg.leds.length > i) {
          resolved.leds[i] = Led.Resolve(msg.leds[i]);
        }
        else {
          resolved.leds[i] = new Led();
        }
      }
    }
    else {
      resolved.leds = new Array(15).fill(new Led())
    }

    return resolved;
    }
};

module.exports = ChestLeds;
