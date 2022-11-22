#!/usr/bin/env python
import sys
import roslib
import rospy
import moveit_commander
import moveit_msgs.msg
from geometry_msgs.msg import Pose, PoseStamped
from std_msgs.msg import UInt16
from tf import TransformListener
# from geometry_msgs.msg import Vector3

#  0) Initialization of Robot
moveit_commander.roscpp_initialize(sys.argv)
rospy.init_node('move_group_python_interface_jaco', anonymous=True)
robot = moveit_commander.RobotCommander()

# 1) Put the arm in the start position
arm_group = moveit_commander.MoveGroupCommander("arm")
arm_group.set_named_target("Home")
plan1 = arm_group.go()

# # 2) Move the arm on the approach  postion
# arm_group = moveit_commander.MoveGroupCommander("arm")
# arm_group.set_named_target("StandBy_2")
# plan1 = arm_group.go()

# # 3) grasp pose
# arm_group = moveit_commander.MoveGroupCommander("arm")
# arm_group.set_named_target("Grasp")
# plan1 = arm_group.go()


# 3) get the pose  from  /j2n6s300_end_effector to /object_#
# t = TransformListener ()
# t.waitForTransform("/root", "/object_65", rospy.Time(), rospy.Duration(4.0))
# (translation, rotation) = t.lookupTransform("/root", "/object_65", rospy.Time())
# xyz = translation
# # xyz[0] -= 0.15
# xyz[0] += 0.3
# arm_group.set_position_target(xyz)
# plan1 = arm_group.go()

# 4) publish a topic to grasping  an object
# rostopic pub servo_HS645MG std_msgs/UInt16 30
def stop_callback(event):
    print('grasping 10 seconds!')
    rospy.signal_shutdown("Just stopping publishing...")

rate = rospy.Rate(1000)
rospy.Timer(rospy.Duration(10), stop_callback)
grasp = 0
pub = rospy.Publisher('/servo_HS645MG', UInt16, grasp)
while not rospy.is_shutdown():
    pub.publish(UInt16(grasp))
    rate.sleep()


# 5) releasing  an object
# 3) grasp pose
arm_group = moveit_commander.MoveGroupCommander("arm")
arm_group.set_named_target("Grasp")
plan1 = arm_group.go()

rospy.Timer(rospy.Duration(10), stop_callback)
grasp = 50
pub = rospy.Publisher('servo_HS645MG', UInt16, grasp)
while not rospy.is_shutdown():
    pub.publish(UInt16(grasp))
    rate.sleep()



moveit_commander.roscpp_shutdown()
# rospy.spin()
