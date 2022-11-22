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
robot = moveit_commander.RobotCommander()
arm_group = moveit_commander.MoveGroupCommander("arm")

# print "============ Printing robot state"
# print robot.get_current_state()
# print ""

# 2) Move the arm on the approach  postion
# arm_group.set_named_target("Home")
# plan1 = arm_group.go()



# 3.1) get the pose  from  /j2n6s300_end_effector to /object_#
t = TransformListener ()
t.waitForTransform("/root", "/object_65", rospy.Time(), rospy.Duration(3.0))
(translation, rotation) = t.lookupTransform("/root", "/object_65", rospy.Time())
print('T=', translation, 'R=', rotation)
pose_target = geometry_msgs.msg.Pose()  # set up pose_target =[0 0 0 0 0 0 0]

# 3.2) calibrate x-y
from scipy.interpolate import interp1d
import numpy as np

xx = np.float(translation[0])
yy = np.float(translation[1])
translation = (xx, yy, 0.036)
# print(translation)

pose_target.position.x = translation[0]
pose_target.position.y = translation[1]
pose_target.position.z = translation[2]

pose_target.orientation.x = 0.023           # 0.026
pose_target.orientation.y = 0.998
pose_target.orientation.z = 0.051           #0.049
pose_target.orientation.w = 0.022         #-0.035

# j2n6s300_link_6: Quaternion [0.062, -0.022, 0.689, 0.722]
# j2n6s300_end_effector: Quaternion [0.023, 0.998, 0.059, -0.028]


# print('pose_target=', pose_target)
# print(type(pose_target))    # <class 'geometry_msgs.msg._Pose.Pose'>

arm_group.set_pose_target(pose_target)
plan1 = arm_group.go()
# print robot.get_current_state()
# rospy.sleep(3)
moveit_commander.roscpp_shutdown()
# rospy.spin()
exit()
