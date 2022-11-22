#!/usr/bin/env python
import sys
import roslib
import rospy
import moveit_commander
import moveit_msgs.msg
import geometry_msgs.msg
from geometry_msgs.msg import Pose, PoseStamped
from std_msgs.msg import UInt16
from tf import TransformListener
import copy
# from geometry_msgs.msg import Vector3



#  0) Initialization of Robot
moveit_commander.roscpp_initialize(sys.argv)
rospy.init_node('move_group_python_interface_jaco', anonymous=True)
robot = moveit_commander.RobotCommander()
scene = moveit_commander.PlanningSceneInterface()
arm_group = moveit_commander.MoveGroupCommander("arm")

# print "============ Printing robot state"
# print robot.get_current_state()
# print ""

# 1) Create a DisplayTrajectory
display_trajectory_publisher = rospy.Publisher('/move_group/display_planned_path', moveit_msgs.msg.DisplayTrajectory, queue_size=20)


# 2) Planning to a Pose Goal
pose_goal = geometry_msgs.msg.Pose()

import numpy as np
# Translation = [-0.028, -0.671, 0.008]
pose_goal.position.x = -0.028
pose_goal.position.y = -0.671
pose_goal.position.z = 0.008

Quaternion = (0.023, 0.998, 0.059, -0.028)
pose_goal.orientation.x = np.float(Quaternion[0])
pose_goal.orientation.y = np.float(Quaternion[1])
pose_goal.orientation.z = np.float(Quaternion[2])
pose_goal.orientation.w = np.float(Quaternion[3])

arm_group.set_pose_target(pose_goal)

plan = arm_group.go(wait=True)
# arm_group.stop()
# arm_group.clear_pose_targets()

# 3) plan a Cartesian path directly by specifying a list of waypoints for the end-effector
# waypoints = []
# scale = 1
# wpose = arm_group.get_current_pose().pose
# wpose.position.z -=scale*0.1
# wpose.position.y += scale * 0.2
# waypoints.append(copy.deepcopy(wpose))
# wpose.position.x += scale * 0.1  # Second move forward/backwards in (x)
# waypoints.append(copy.deepcopy(wpose))
# wpose.position.y -= scale * 0.1  # Third move sideways (y)
# waypoints.append(copy.deepcopy(wpose))
#
# (plan, fraction) = arm_group.compute_cartesian_path(waypoints, 0.01, 0.0)


# 4) Displaying a Trajectory
# display_trajectory = moveit_msgs.msg.DisplayTrajectory()
# display_trajectory.trajectory_start = robot.get_current_state()
# display_trajectory.trajectory.append(plan)
# # Publish
# display_trajectory_publisher.publish(display_trajectory)


# 5) Executing a Plan
# arm_group.execute(plan, wait=True)

# rospy.sleep(3)
moveit_commander.roscpp_shutdown()
# rospy.spin()
exit()
