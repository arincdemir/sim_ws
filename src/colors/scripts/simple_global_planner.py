#!/usr/bin/env python
import rospy
import threading
from nav_msgs.msg import Path
from geometry_msgs.msg import PoseStamped
# If you have a python BaseGlobalPlanner interface, import it.
# Otherwise, you might just use this class directly.
# from nav_core import BaseGlobalPlanner

class SimpleGlobalPlanner:
    def __init__(self, name, costmap_ros):
        self.initialized = False
        self.costmap_ros = None
        self.latest_plan = Path()
        self.plan_mutex = threading.Lock()
        self.initialize(name, costmap_ros)

    def initialize(self, name, costmap_ros):
        if not self.initialized:
            self.costmap_ros = costmap_ros
            # In Python, use rospy for node handling
            # Subscribe to the topic for the CNMP plan
            self.cnmp_plan_sub = rospy.Subscriber("cnmp_global_plan", Path, self.cnmp_plan_callback, queue_size=1)
            rospy.loginfo("SimpleGlobalPlanner: Initialized")
            self.initialized = True
        else:
            rospy.logwarn("SimpleGlobalPlanner: Already initialized")

    def cnmp_plan_callback(self, msg):
        with self.plan_mutex:
            self.latest_plan = msg
            rospy.loginfo("Simple Global Planner: Received CNMP plan with %d poses", len(msg.poses))

    def make_plan(self, start, goal):
        """
        Given a start and goal, compute a plan.
        If a CNMP plan exists, use it.
        Otherwise, fall back to generating a straight-line plan.
        :param start: geometry_msgs/PoseStamped
        :param goal: geometry_msgs/PoseStamped
        :return: list of geometry_msgs/PoseStamped
        """
        if not self.initialized:
            rospy.logerr("SimpleGlobalPlanner has not been initialized")
            return None

        if start.header.frame_id != goal.header.frame_id:
            rospy.logerr("SimpleGlobalPlanner: Start and goal frames do not match")
            return None

        plan = []
        fallback = True

        with self.plan_mutex:
            if self.latest_plan.poses:
                plan = list(self.latest_plan.poses)
                rospy.loginfo("SimpleGlobalPlanner: Using NN plan with %d points", len(plan))
                fallback = False

        if fallback:
            rospy.logwarn("SimpleGlobalPlanner: No CNMP plan available, falling back to straight line plan.")
            num_points = 50

            start_x = start.pose.position.x
            start_y = start.pose.position.y
            goal_x  = goal.pose.position.x
            goal_y  = goal.pose.position.y

            for i in range(num_points + 1):
                alpha = float(i) / num_points  # 0.0 -> 1.0
                intermediate = PoseStamped()
                intermediate.header.frame_id = start.header.frame_id
                intermediate.header.stamp = rospy.Time.now()
                
                intermediate.pose.position.x = start_x + alpha * (goal_x - start_x)
                intermediate.pose.position.y = start_y + alpha * (goal_y - start_y)
                intermediate.pose.position.z = 0.0

                # Copy the orientation from the start
                intermediate.pose.orientation = start.pose.orientation

                plan.append(intermediate)

            rospy.loginfo("SimpleGlobalPlanner: Straight line plan of %d points created", len(plan))

        return plan

if __name__ == '__main__':
    rospy.init_node("simple_global_planner_node")
    
    # Assuming you have a costmap_ros object or replace it with None if not needed
    costmap_ros = None  
    planner = SimpleGlobalPlanner("simple_global_planner", costmap_ros)
    
    # For testing, create two simple PoseStamped messages
    start = PoseStamped()
    start.header.frame_id = "map"
    start.pose.position.x = 0.0
    start.pose.position.y = 0.0
    start.pose.orientation.w = 1.0

    goal = PoseStamped()
    goal.header.frame_id = "map"
    goal.pose.position.x = 10.0
    goal.pose.position.y = 10.0
    goal.pose.orientation.w = 1.0

    # Allow some time for potential CNMP plan callbacks
    rospy.sleep(1.0)
    plan = planner.make_plan(start, goal)
    
    # Log out the plan details
    if plan:
        rospy.loginfo("Plan generated with %d points", len(plan))
    else:
        rospy.logerr("Failed to generate plan.")
    
    rospy.spin()