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
# t = TransformListener ()
# t.waitForTransform("/root", "/object_65", rospy.Time(), rospy.Duration(3.0))
# (translation, rotation) = t.lookupTransform("/root", "/object_65", rospy.Time())
# obj_65 = np.array(translation)
# obj_65[2] = 1
# obj_65 = obj_65.reshape(3,1)
# print('obj_65:', obj_65)


# 2) Calibration: 4 points
pose_target = geometry_msgs.msg.Pose()  # set up pose_target =[0 0 0 0 0 0 0]
Quaternion = (0.555, 0.828, 0.077, -0.017)
c1 = (0.086, -0.515)
pose_target.position.x = np.float(c1[0])
pose_target.position.y = np.float(c1[1])
pose_target.position.z = 0.036
pose_target.orientation.x = np.float(Quaternion[0])
pose_target.orientation.y = np.float(Quaternion[1])
pose_target.orientation.z = np.float(Quaternion[2])
pose_target.orientation.w = np.float(Quaternion[3])
arm_group.set_pose_target(pose_target)
plan = arm_group.go()
rospy.sleep(3)

c2 = (0.091, -0.629)
pose_target.position.x = np.float(c2[0])
pose_target.position.y = np.float(c2[1])
pose_target.position.z = 0.036
pose_target.orientation.x = np.float(Quaternion[0])
pose_target.orientation.y = np.float(Quaternion[1])
pose_target.orientation.z = np.float(Quaternion[2])
pose_target.orientation.w = np.float(Quaternion[3])
arm_group.set_pose_target(pose_target)
plan = arm_group.go()
rospy.sleep(3)

c3 = (-0.110, -0.626)
pose_target.position.x = np.float(c3[0])
pose_target.position.y = np.float(c3[1])
pose_target.position.z = 0.036
pose_target.orientation.x = np.float(Quaternion[0])
pose_target.orientation.y = np.float(Quaternion[1])
pose_target.orientation.z = np.float(Quaternion[2])
pose_target.orientation.w = np.float(Quaternion[3])
arm_group.set_pose_target(pose_target)
plan = arm_group.go()
rospy.sleep(3)

c4 = (-0.134, -0.523)
pose_target.position.x = np.float(c4[0])
pose_target.position.y = np.float(c4[1])
pose_target.position.z = 0.036
pose_target.orientation.x = np.float(Quaternion[0])
pose_target.orientation.y = np.float(Quaternion[1])
pose_target.orientation.z = np.float(Quaternion[2])
pose_target.orientation.w = np.float(Quaternion[3])
arm_group.set_pose_target(pose_target)
plan = arm_group.go()
rospy.sleep(3)

# 6) Completion
moveit_commander.roscpp_shutdown()
exit()




# rostopic echo -c /j2n6s300_driver/out/joi_angles

# c1
# joint1: 257.028961182
# joint2: 245.298187256
# joint3: 106.162315369
# joint4: 338.341522217
# joint5: 62.0557632446
# joint6: 85.5673980713

# c2
# joint1: 258.12902832
# joint2: 256.698883057
# joint3: 148.463226318
# joint4: 327.241973877
# joint5: 94.4560928345
# joint6: 74.3172836304

# c3
# joint1: 275.730102539
# joint2: 257.198913574
# joint3: 148.463226318
# joint4: 328.141937256
# joint5: 95.9561080933
# joint6: 89.1674346924

# c4
# joint1: 278.730285645
# joint2: 244.698150635
# joint3: 110.662246704
# joint4: 339.841461182
# joint5: 65.2057952881
# joint6: 105.217597961


# other points for objectts
# p2 = (-0.050, -0.616)
