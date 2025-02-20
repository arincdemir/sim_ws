#include "simple_global_planner.h"
#include <pluginlib/class_list_macros.h>
#include <tf/tf.h>
// updates for rospy node
#include <mutex>

PLUGINLIB_EXPORT_CLASS(simple_global_planner::SimpleGlobalPlanner, nav_core::BaseGlobalPlanner)

namespace simple_global_planner
{

SimpleGlobalPlanner::SimpleGlobalPlanner()
  : initialized_(false), costmap_ros_(nullptr)
{
}

SimpleGlobalPlanner::SimpleGlobalPlanner(std::string name, costmap_2d::Costmap2DROS* costmap_ros)
  : initialized_(false), costmap_ros_(nullptr)
{
  initialize(name, costmap_ros);
}

void SimpleGlobalPlanner::initialize(std::string name, costmap_2d::Costmap2DROS* costmap_ros)
{
  if (!initialized_)
  {
    costmap_ros_ = costmap_ros;

    //updates for rospy node
    ros::NodeHandle nh = costmap_ros_->getNodeHandle();
    nn_plan_sub_ = nh.subscribe("cnmp_global_plan", 1, &SimpleGlobalPlanner::cnmpPlanCallback, this);
    
    // (Optional) get parameters from the parameter server, e.g.:
    // ros::NodeHandle private_nh("~/" + name);
    // private_nh.param("some_parameter", some_variable, default_value);

    ROS_INFO("SimpleGlobalPlanner: Initialized");
    initialized_ = true;
  }
  else
  {
    ROS_WARN("SimpleGlobalPlanner: Already initialized");
  }
}


//update for rospy node
void SimpleGLobalPlanner::cnmpPlanCallback(const nav_msgs::Path::ConstPtr& msg)
{
  std::lock_guard<std::mutex> lock(plan_mutex_);
  latest_plan_ = *msg;
  ROS_INFO("Simple Global Planner: Received CNMP plan with %zu poses", latest_plan_.poses.size());
}


bool SimpleGlobalPlanner::makePlan(const geometry_msgs::PoseStamped& start,
                                   const geometry_msgs::PoseStamped& goal,
                                   std::vector<geometry_msgs::PoseStamped>& plan)
{
  // Check if plugin is initialized
  if (!initialized_)
  {
    ROS_ERROR("SimpleGlobalPlanner has not been initialized");
    return false;
  }

  // Make sure the start and goal are in the same frame
  if (start.header.frame_id != goal.header.frame_id)
  {
    ROS_ERROR("SimpleGlobalPlanner: Start and goal frames do not match");
    return false;
  }

  plan.clear();  // ensure a clean plan


  //updates for rospy node
  {
    std::lock_guard<std::mutex> lock(plan_mutex_);
    if (!latest_plan_.poses.empty()){
      //assume cnmp is in the same coordinate frame
      plan = latest_plan_.poses;
      ROS_INFO("SimpleGlobalPlanner: Using NN plan with %zu points", plan.size());
    }
  }
  ROS_WARN("SimpleGlobalPlanner: No Cnmp plan available, falling back to straight line plan.");





  // For demonstration, we’ll just create a straight line
  // between the start and the goal (in the XY plane).
  
  // How many points do we want on this line?
  int num_points = 50;

  double start_x = start.pose.position.x;
  double start_y = start.pose.position.y;
  double goal_x  = goal.pose.position.x;
  double goal_y  = goal.pose.position.y;

  // Create linear interpolation of poses
  for (int i = 0; i <= num_points; ++i)
  {
    double alpha = (double)i / (double)num_points; // 0.0 -> 1.0
    geometry_msgs::PoseStamped intermediate;
    intermediate.header.frame_id = start.header.frame_id;
    intermediate.header.stamp = ros::Time::now();

    intermediate.pose.position.x = start_x + alpha * (goal_x - start_x);
    intermediate.pose.position.y = start_y + alpha * (goal_y - start_y);
    intermediate.pose.position.z = 0.0;

    // We can also interpolate orientation. For simplicity, just copy the start orientation:
    intermediate.pose.orientation = start.pose.orientation;
    
    plan.push_back(intermediate);
  }

  ROS_INFO("SimpleGlobalPlanner: Straight line plan of %zu points created", plan.size());
  return true;
}

} // end namespace simple_global_planner
