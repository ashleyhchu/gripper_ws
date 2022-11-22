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
# moveit_commander.roscpp_initialize(sys.argv)
rospy.init_node('move_group_python_interface_jaco', anonymous=True)
# robot = moveit_commander.RobotCommander()

# 1) Put the arm in the start position
# arm_group = moveit_commander.MoveGroupCommander("arm")
# arm_group.set_named_target("Home")
# plan1 = arm_group.go()

# 2) Move the arm on the approach  postion
# arm_group = moveit_commander.MoveGroupCommander("arm")
# arm_group.set_named_target("StandBy_1")
# plan1 = arm_group.go()

# 3) get the pose  from  /j2n6s300_end_effector to /object_#
# t = TransformListener ()
# t.waitForTransform("/root", "/object_65", rospy.Time(), rospy.Duration(4.0))
# (translation, rotation) = t.lookupTransform("/root", "/object_65", rospy.Time())
# xyz = translation
# # xyz[0] += 0.15
# arm_group.set_position_target(xyz)
# plan1 = arm_group.go()

# 4) publish a topic to grasping  an object
# rostopic pub servo_HS645MG std_msgs/UInt16 30
rate = rospy.Rate(100)
grasp = 30
pub = rospy.Publisher('servo_HS645MG', UInt16, grasp)
pub.publish(UInt16(grasp))
rate.sleep()












# ----------------------------------------------------------
# def stop_callback(event):
#     print('hey! 10 seconds.')
#     rospy.signal_shutdown("Just stopping publishing...")
#
# rate = rospy.Rate(100)
# rospy.Timer(rospy.Duration(10), stop_callback)
#
# grasp = 30
# pub = rospy.Publisher('servo_HS645MG', UInt16, grasp)
#
# while not rospy.is_shutdown():
#     pub.publish(UInt16(grasp))
#     rate.sleep()
#  this code works!



# ----------------------------------------------------------
# grasp = 30
# while (grasp == 30):
#     pub = rospy.Publisher('servo_HS645MG', UInt16, grasp)
#     pub.publish(UInt16(grasp))
#     while (rospy.sleep(10)==10):
#         break




# ----------------------------------------------------------
# i = 0
# while i<10:
#     i = i+1
#     grasp = 30
#     pub = rospy.Publisher('servo_HS645MG', UInt16, grasp)
#     pub.publish(UInt16(grasp))
# servo didn't work, cannot use i = i+1 counter




# ----------------------------------------------------------
# char = sys.stdin.read(1)
# while (char == 'g'):
#     grasp = 30
#     pub = rospy.Publisher('servo_HS645MG', UInt16, grasp)
#     pub.publish(UInt16(grasp))
#     print ("grasp!")
#     # rospy.Duration(10.0)
#     pass
#     grasp = input("Enter your value: ")
#     if (grasp ==  0):
#         pub = rospy.Publisher('servo_HS645MG', UInt16, grasp)
#         pub.publish(UInt16(grasp)); print('releasing now!')
#     break






# ----------------------------------------------------------
# char = sys.stdin.read(1)
# if (char == 'g'):
#     for i in range(10, 0, -1):
#         pub = rospy.Publisher('servo_HS645MG', UInt16, 30)
#         pub.publish(UInt16(30))
#         print "Grasping!"
# servo didn't work





# ----------------------------------------------------------
 # char = sys.stdin.read(1)
# if (char == 'r'):
#     pub = rospy.Publisher('servo_HS645MG', UInt16, 0)
#     pub.publish(UInt16(0))
#     print "Release!"
# servo didn't work






# ----------------------------------------------------------
# grasp = input("Enter your value: ")
# grasp = 30
# while (grasp == 30):
#     pub = rospy.Publisher('servo_HS645MG', UInt16, grasp)
#     pub.publish(UInt16(grasp)); print('grasping now!')
#     continue
#
#     # pass
#     grasp = input("Enter your value: ")
#     if (grasp == 0):
#         pub = rospy.Publisher('servo_HS645MG', UInt16, grasp)
#         pub.publish(UInt16(grasp)); print('releasing now!')
#         break
# servo  work!

# ----------------------------------------------------------
# pub.publish(UInt16(grasp)); print('grasping now!')      # doesn't work
# rospy.sleep(3)    # doesn't work
# rospy.spin()     # doesn't work
# rospy.sleep(3)     # doesn't work
# r = rospy.Rate(10)
# if rate is too low, then servo cannot wrok. For example,  rate = rospy.Rate(1)

# ----------------------------------------------------------
# while not rospy.is_shutdown():
#     pub.publish(UInt16(30)); print('grasping now!')
#     # rospy.sleep(3)      # doesn't work
#     # pub.publish(UInt16(0)); print('grasping now!')
#     break
# rospy.sleep(10)





# ----------------------------------------------------------
# 5) releasing  an object
# release = 0
# pub = rospy.Publisher('servo_HS645MG', UInt16, release)
# # pub.publish(UInt16(release)); print('releasing now!')
# while not rospy.is_shutdown():
#     pub.publish(UInt16(release)); print('grasping now!')
# rospy.sleep(3)
moveit_commander.roscpp_shutdown()
# rospy.spin()
