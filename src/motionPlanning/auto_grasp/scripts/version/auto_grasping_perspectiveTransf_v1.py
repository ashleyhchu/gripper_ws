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
obj_65 = obj_65.reshape(3,1)
print('obj_65:', obj_65)


# 2) Perspective Transformation: Translation
import cv2
from affine import Affine
pts_obj = np.float32([[0.1487728816448966, -0.4739636858406374], [0.1494194403030133, -0.6635299375785878], [-0.14278168372248456, -0.6502725640882097], [-0.14684446138135587, -0.44353322857058397]])
pts_arm = np.float32([[0.133, -0.468], [0.141, -0.664], [-0.144, -0.648], [-0.140, -0.436]])
M = cv2.getAffineTransform(pts_arm, pts_obj)
# print('Matrix:', M)
real_arm_pose = np.dot(M, obj_65)
print('real_arm_pose:', real_arm_pose)


# 3) Plane a Goal Pose
pose_target = geometry_msgs.msg.Pose()  # set up pose_target =[0 0 0 0 0 0 0]
# translation
x = np.float(real_arm_pose[0])
y = np.float(real_arm_pose[1])
z = 0.036
pose_target.position.x = x
pose_target.position.y = y
pose_target.position.z = z
#  orientation
# Quaternion = (0.023, 0.998, 0.059, -0.028)      # Quaternion <type 'tuple'>
Quaternion = (0.023, 0.998, 0.051, 0.022)
pose_target.orientation.x = np.float(Quaternion[0])
pose_target.orientation.y = np.float(Quaternion[1])
pose_target.orientation.z = np.float(Quaternion[2])
pose_target.orientation.w = np.float(Quaternion[3])


# 4) Execute planning
arm_group.set_pose_target(pose_target)
plan1 = arm_group.go()


# 5) checking
# eef_link = arm_group.get_end_effector_link()
# print("============ End effector link: %s" % eef_link)
# current_pose = arm_group.get_current_pose()
# print('eeeeP:', current_pose)

# 6) Completion
moveit_commander.roscpp_shutdown()
# rospy.spin()
exit()

# if no motion, check object_65 if giveing stable position.
