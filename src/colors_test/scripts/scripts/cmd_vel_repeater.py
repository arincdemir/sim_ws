#!/usr/bin/env python3

import rospy
from geometry_msgs.msg import Twist

class CmdVelRepeater:
    def __init__(self):
        # Initialize the ROS node
        rospy.init_node('cmd_vel_repeater')

        # Publisher to /mobile_base_controller/cmd_vel
        self.pub = rospy.Publisher('/mobile_base_controller/cmd_vel', Twist, queue_size=10)

        # Subscriber to /cmd_vel
        rospy.Subscriber('/cmd_vel', Twist, self.cmd_vel_callback)

        # Store the last received Twist message
        self.last_cmd_vel = Twist()

        # Publish rate (10 Hz)
        self.rate = rospy.Rate(10)

    def cmd_vel_callback(self, msg):
        # Scale the received message by 2
        scaled_msg = Twist()
        scaled_msg.linear.x = msg.linear.x * 1
        scaled_msg.linear.y = msg.linear.y * 1
        scaled_msg.linear.z = msg.linear.z * 1
        scaled_msg.angular.x = msg.angular.x * 1
        scaled_msg.angular.y = msg.angular.y * 1
        scaled_msg.angular.z = msg.angular.z * 1

        # Update the last received (and scaled) message
        self.last_cmd_vel = scaled_msg

    def run(self):
        while not rospy.is_shutdown():
            # Publish the last received message at 10 Hz
            self.pub.publish(self.last_cmd_vel)
            self.rate.sleep()

if __name__ == '__main__':
    try:
        repeater = CmdVelRepeater()
        repeater.run()
    except rospy.ROSInterruptException:
        pass
