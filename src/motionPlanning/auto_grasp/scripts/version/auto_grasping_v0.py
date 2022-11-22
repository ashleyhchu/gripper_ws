#!/usr/bin/env python
import sys
import rospy
import moveit_commander
from geometry_msgs.msg import Pose, PoseStamped
from tf import TransformListener
from geometry_msgs.msg import Vector3


moveit_commander.roscpp_initialize(sys.argv)
rospy.init_node('move_group_python_interface_jaco', anonymous=True)
robot = moveit_commander.RobotCommander()

# 1) Put the arm in the start position
arm_group = moveit_commander.MoveGroupCommander("arm")
arm_group.set_named_target("Home")
plan1 = arm_group.go()

# 2) get the pose  from  /j2n6s300_end_effector to /object_
t = TransformListener ()
t.waitForTransform("/root", "/object_65", rospy.Time(), rospy.Duration(4.0))
(translation,rotation) = t.lookupTransform("/root", "/object_65", rospy.Time())
xyz = translation
# xyz[0] += 0.15
arm_group.set_position_target(xyz)
plan1 = arm_group.go()

rospy.sleep(3)
moveit_commander.roscpp_shutdown()
# rospy.spin()

# ------------------------------------------------------------------------------------

if t.frameExists("root") and t.frameExists("object_59"):
    (translation,rotation) = t.lookupTransform("root", "object_59", rospy.Time())
    # put the arm at the 1st grasping position
    pose_target = geometry_msgs.msg.Pose()
    pose_target.orientation.x = 0.5
    pose_target.orientation.y = 0.5
    pose_target.orientation.z = -0.5
    pose_target.orientation.w = 0.5
    pose_target.position = translation
    pose_target.position.z -= 0.0
    arm_group.set_pose_target(pose_target)
    # plan1 = arm_group.go()

    # put the arm at the 2nd grasping position
    # pose_target.position.z += 0.15
    # arm_group.set_pose_target(pose_target)
    # plan1 = arm_group.go()

    # # close the gripper
    # hand_group.set_named_target("Close")
    # plan2 = hand_group.go()

    # put the arm at the 3rd grasping position
    # pose_target.position.z = 1.5
    # arm_group.set_pose_target(pose_target)
    # plan1 = arm_group.go()

# rospy.sleep(3)
# moveit_commander.roscpp_shutdown()
