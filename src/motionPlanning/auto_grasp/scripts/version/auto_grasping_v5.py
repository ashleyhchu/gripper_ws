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
# from geometry_msgs.msg import Vector3

#  0) Initialization of Robot
moveit_commander.roscpp_initialize(sys.argv)
rospy.init_node('move_group_python_interface_jaco', anonymous=True)
# robot = moveit_commander.RobotCommander()
arm_group = moveit_commander.MoveGroupCommander("arm")

# 2) Move the arm on the approach  postion
# arm_group.set_named_target("StandBy_2")
# plan1 = arm_group.go()



# 3.1) get the pose  from  /j2n6s300_end_effector to /object_#
t = TransformListener ()
t.waitForTransform("/root", "/object_65", rospy.Time(), rospy.Duration(3.0))
(translation, rotation) = t.lookupTransform("/root", "/object_65", rospy.Time())
print('T=', translation, 'R=', rotation)
# ([-0.08641286283148156, -0.6828414866875694, 0.012746010542897812], [0.02, 0.998, 0.047, -0.035])
pose_target = geometry_msgs.msg.Pose()  # set up pose_target =[0 0 0 0 0 0 0]

# 3.2) calibrate x-y
from scipy.interpolate import interp1d
import numpy as np
# ----------------------------------------------------------------------------------------------------------------------------------------
# rosrun kinova_demo joints_action_client.py -v  j2n6s300 degree -- 273 281 216 258 197 76    # Grasp  position
# rosrun tf tf_echo root j2n6s300_end_effector
# - Translation: [-0.028, -0.678, 0.029] --> using x, y values -0.028, -0.678,
# - Rotation: [0.026, 0.998, 0.049, -0.035]
# -----------------------------------------------------------------------------------------------------------------------------------------
# ------------for object position-1------------------
map_x = interp1d( [ 0, -0.098] , [ 0, -0.029] ) # x = -0.098 = -0.028 -> needing to tune x each time.
map_y = interp1d( [ 0, -0.71] , [ 0, -0.690] )  # y = -0.71 = -0.678 -> -> needing to tune y each time.
# -------------------------------------------------------
# ------------for object position-2------------------
# map_x = interp1d( [ 0, -0.167] , [ 0, -0.029] )
# map_y = interp1d( [ 0, -0.472] , [ 0, -0.690] )
# -------------------------------------------------------
xx = np.float(map_x(translation[0])); print('xx=', xx)
yy = np.float(map_y(translation[1])); print('yy=', yy)
translation = (xx, yy, 0.036); print(translation)
# pose_target.position = translation    #   cannot use this because "AttributeError: 'tuple' object has no attribute 'x' ."
pose_target.position.x = translation[0]
pose_target.position.y = translation[1]
pose_target.position.z = translation[2]
pose_target.orientation.x = 0.026
pose_target.orientation.y = 0.998
pose_target.orientation.z = 0.049
pose_target.orientation.w = -0.035
# print('pose_target=', pose_target)
# print(type(pose_target))    # <class 'geometry_msgs.msg._Pose.Pose'>
arm_group.set_pose_target(pose_target)
plan1 = arm_group.go()

# rospy.sleep(3)
moveit_commander.roscpp_shutdown()
# rospy.spin()
exit()
