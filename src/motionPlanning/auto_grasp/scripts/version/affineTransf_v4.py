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
import numpy as np
# from geometry_msgs.msg import Vector3

#  0) Initialization of Robot
moveit_commander.roscpp_initialize(sys.argv)
rospy.init_node('move_group_python_interface_jaco', anonymous=True)
robot = moveit_commander.RobotCommander()
arm_group = moveit_commander.MoveGroupCommander("arm")
# go Home Position
# arm_group.set_named_target("Kinova_Home")
# plan = arm_group.go()

# 1) obtain object_65 position
t = TransformListener ()
t.waitForTransform("/root", "/object_65", rospy.Time(), rospy.Duration(3.0))
(translation, rotation) = t.lookupTransform("/root", "/object_65", rospy.Time())
obj_65 = np.array(translation)
obj_65[2] = 1
obj_65 = obj_65.reshape(3,1)
print('obj_65:', obj_65)
# cali_armPose=obj_65


# 2) Calibration: Affine Transformation
import cv2
from affine import Affine

pts_obj = np.float32([[0.160, -0.666], [-0.148, -0.633],[-0.147, -0.443]])
pts_arm = np.float32([[0.091, -0.629], [-0.110, -0.626], [-0.134, -0.523]])
M_obj = cv2.getAffineTransform(pts_obj, pts_arm)
# print('Matrix:', M_obj)
cali_armPose = np.dot(M_obj, obj_65)
print('cali_armPose_1:', cali_armPose)
bias = np.array([-0.020,  0.025]).reshape(2,1)
cali_armPose = cali_armPose - bias
print('cali_armPose_2:', cali_armPose)



# 3) Plane a Goal Pose
pose_target = geometry_msgs.msg.Pose()  # set up pose_target =[0 0 0 0 0 0 0]
# Translation
pose_target.position.x = np.float(cali_armPose[0])
pose_target.position.y = np.float(cali_armPose[1])
pose_target.position.z = 0.15       # Approach position
Quaternion = (0, 1, 0, 0)
pose_target.orientation.x = np.float(Quaternion[0])
pose_target.orientation.y = np.float(Quaternion[1])
pose_target.orientation.z = np.float(Quaternion[2])
pose_target.orientation.w = np.float(Quaternion[3])

# 4) Execute planning
arm_group.set_pose_target(pose_target)
plan = arm_group.go()


pose_target.position.z = 0.04
arm_group.set_pose_target(pose_target)
plan = arm_group.go()


# 6) Completion
moveit_commander.roscpp_shutdown()
exit()
