#!/usr/bin/env python3

import rospy
from geometry_msgs.msg import Twist


if __name__ == '__main__':
    rospy.init_node('move_robot_node', anonymous=True)
    pub = rospy.Publisher('/mobile_base_controller/cmd_vel', Twist,queue_size=1)
    rate = rospy.Rate(10)  # Publish at 10 Hz

    while not rospy.is_shutdown():
        msg = Twist()
        msg.linear.x = 0.5  # Set the linear velocity
        
        #pub.publish(msg)
        rate.sleep()