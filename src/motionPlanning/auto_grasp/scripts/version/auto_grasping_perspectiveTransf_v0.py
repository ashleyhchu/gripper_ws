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
real_objPose = np.array(translation[0:2])
real_objPose = real_objPose.reshape(2,1)
print('obj_65:', real_objPose)


# 2) Affine Transformation: Translation . Ax=b to find x = b*x^ -1
obj = np.array([[-0.013, -0.684, 0, 0], [0, 0, -0.013, -0.684], [-0.084, -0.607, 0, 0], [0, 0, -0.084, -0.607]])
b = np.array([-0.020, -0.679, -0.082, -0.599])
xx = np.linalg.solve(obj, b)
xx = np.array([xx[0:2], xx[2:4]])
real_arm_pose = np.dot(xx, real_objPose)


# 3) Goal Pose
pose_target = geometry_msgs.msg.Pose()  # set up pose_target =[0 0 0 0 0 0 0]
# translation
x = np.float(real_arm_pose[0]); print("x:", x)
y = np.float(real_arm_pose[1])
z = 0.036
pose_target.position.x = x
pose_target.position.y = y
pose_target.position.z = z
#  orientation
Quaternion = (0.023, 0.998, 0.059, -0.028)      # Quaternion <type 'tuple'>
pose_target.orientation.x = np.float(Quaternion[0])
pose_target.orientation.y = np.float(Quaternion[1])
pose_target.orientation.z = np.float(Quaternion[2])
pose_target.orientation.w = np.float(Quaternion[3])


# 4) Execute planning
arm_group.set_pose_target(pose_target)
plan1 = arm_group.go()

moveit_commander.roscpp_shutdown()
# rospy.spin()
exit()

# if no motion, check object_65 if giveing stable position.
