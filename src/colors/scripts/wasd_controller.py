#!/usr/bin/env python3

import rospy
from geometry_msgs.msg import Twist
from pynput import keyboard

class WASDController:
    def __init__(self):
        # Initialize ROS node
        rospy.init_node('wasd_controller')

        # Publisher for /cmd_vel
        self.pub = rospy.Publisher('/mobile_base_controller/cmd_vel', Twist, queue_size=10)

        # Create a Twist message
        self.twist = Twist()

        # Movement parameters
        self.linear_speed = 0.4  # m/s
        self.angular_speed = 0.4  # rad/s

        self.w = False
        self.s = False
        self.a = False
        self.d = False

        # Listener for keyboard input
        self.listener = keyboard.Listener(on_press=self.on_press, on_release=self.on_release)
        self.listener.start()

    def on_press(self, key):
        try:
            # Update Twist message based on key pressed
            if key.char == 'w':  # Forward
                self.w = True
            elif key.char == 's':  # Backward
                self.s = True
            elif key.char == 'a':  # Turn left
                self.a = True
            elif key.char == 'd':  # Turn right
                self.d = True
        except AttributeError:
            pass

    def on_release(self, key):
        try:
            # Update Twist message based on key pressed
            if key.char == 'w':  # Forward
                self.w = False
            elif key.char == 's':  # Backward
                self.s = False
            elif key.char == 'a':  # Turn left
                self.a = False
            elif key.char == 'd':  # Turn right
                self.d = False
        except AttributeError:
            pass

        # Exit on 'Esc' key
        if key == keyboard.Key.esc:
            rospy.signal_shutdown('User requested shutdown')
            self.listener.stop()
    
    def publis_twist(self):
        if self.w and self.s:
            self.twist.linear.x = 0
        elif self.w:
            self.twist.linear.x = self.linear_speed
        elif self.s:
            self.twist.linear.x = -self.linear_speed
        else:
            self.twist.linear.x = 0

        if self.a and self.d:
            self.twist.angular.z = 0
        elif self.a:
            self.twist.angular.z = self.angular_speed
        elif self.d:
            self.twist.angular.z = -self.angular_speed
        else:
            self.twist.angular.z = 0

        self.pub.publish(self.twist)

    def run(self):
        rate = rospy.Rate(10)  # 10 Hz
        while not rospy.is_shutdown():
            # Publish the Twist message
            self.publis_twist()
            rate.sleep()

if __name__ == '__main__':
    try:
        controller = WASDController()
        controller.run()
    except rospy.ROSInterruptException:
        pass
