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


# 1) obtain object_65 position
t = TransformListener ()
t.waitForTransform("/root", "/object_65", rospy.Time(), rospy.Duration(3.0))
(translation, rotation) = t.lookupTransform("/root", "/object_65", rospy.Time())
obj_65 = np.array(translation)
obj_65[2] = 1
obj_65 = obj_65.reshape(3,1)
print('obj_65:', obj_65)


# 2) Calibration: Perspective Transformation
import cv2
from affine import Affine

pts_obj = np.float32([[0.158, -0.468], [0.160, -0.666], [-0.148, -0.633],[-0.147, -0.443]])
pts_arm = np.float32([[0.086, -0.515], [0.091, -0.629], [-0.110, -0.626], [-0.134, -0.523]])
M_obj = cv2.getPerspectiveTransform(pts_obj, pts_arm)
# print('Matrix:', M_obj)
cali_armPose = np.dot(M_obj, obj_65)
print('cali_armPose:', cali_armPose)


# 3) Tesing 4 points of real_armPose
#  please refer calibration.py for calibration 4 points
# c1 = (0.086, -0.515)        #<type 'tuple'>
# c2 = (0.091, -0.629)
# c3 = (-0.110, -0.626)
# c4 = (-0.134, -0.523)
# cali_armPose =  c2


# 3) Plane a Goal Pose
pose_target = geometry_msgs.msg.Pose()  # set up pose_target =[0 0 0 0 0 0 0]
# Translation
pose_target.position.x = np.float(cali_armPose[0])
pose_target.position.y = np.float(cali_armPose[1])
pose_target.position.z = 0.036
print('moveIt_armPose :', pose_target.position)

# Quaternion = (0.023, 0.998, 0.059, -0.028)      # Quaternion <type 'tuple'>
# Quaternion = (0.023, 0.998, 0.051, 0.022)
# Quaternion = (0.680, 0.730, 0.065, 0.001)
Quaternion = (0.555, 0.828, 0.077, -0.017)      #p2
# Quaternion = (0.640, 0.763, 0.081, -0.049)      #p3
# Quaternion = (0.726, 0.685, 0.026, -0.046)      #p4
# Quaternion = (0.64033333,  0.75866667,  0.06133333, -0.03733333)      # 3 points average
pose_target.orientation.x = np.float(Quaternion[0])
pose_target.orientation.y = np.float(Quaternion[1])
pose_target.orientation.z = np.float(Quaternion[2])
pose_target.orientation.w = np.float(Quaternion[3])


# 4) Execute planning
arm_group.set_pose_target(pose_target)
plan1 = arm_group.go()


# 5) checking (doesn't work)
# eef_link = arm_group.get_end_effector_link()
# print("============ End effector link: %s" % eef_link)
# current_pose = arm_group.get_current_pose()
# print('eeeeP:', current_pose)

# 6) Completion
moveit_commander.roscpp_shutdown()
exit()
