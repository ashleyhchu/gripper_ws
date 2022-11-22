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




# 3.2) calibrate x-y
import numpy as np



# 3.2) Planning
pose_target = geometry_msgs.msg.Pose()  # set up pose_target =[0 0 0 0 0 0 0]

# translation
real_arm_pose = ( 0.086, -0.515, 0.008)
pose_target.position.x = np.float(real_arm_pose[0])
pose_target.position.y = np.float(real_arm_pose[1])
pose_target.position.z = np.float(real_arm_pose[2])

# orientation
Quaternion = (0.680, 0.730, 0.065, 0.001)
pose_target.orientation.x = np.float(Quaternion[0])
pose_target.orientation.y = np.float(Quaternion[1])
pose_target.orientation.z = np.float(Quaternion[2])
pose_target.orientation.w = np.float(Quaternion[3])

print('real_arm_pose=', real_arm_pose)
# print(type(pose_target))    # <class 'geometry_msgs.msg._Pose.Pose'>

arm_group.set_pose_target(pose_target)
plan1 = arm_group.go()
# print robot.get_current_state()
# rospy.sleep(3)
moveit_commander.roscpp_shutdown()
# rospy.spin()
exit()
