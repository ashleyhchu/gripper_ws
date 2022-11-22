#!/usr/bin/env python


import sys
import roslib
import rospy

import moveit_commander
from tf import TransformListener
import numpy as np
import geometry_msgs.msg
import cv2
from affine import Affine

from std_msgs.msg import UInt16



class auto_grasping(object):
    def __init__(self):
        rospy.init_node('move_group_python_interface_jaco', anonymous=True)
        # self.arm_group = moveit_commander.MoveGroupCommander("arm")
        self.pub = rospy.Publisher('/servo_HS645MG', UInt16, queue_size=1)

    def affineTransformation(self):
        #  0) Initialization of Robot
        # robot = moveit_commander.RobotCommander()
        # arm_group = moveit_commander.MoveGroupCommander("arm")
        # 1) obtain object_65 position
        # t = TransformListener ()
        # t.waitForTransform("/root", "/object_65", rospy.Time(), rospy.Duration(3.0))
        # (translation, rotation) = t.lookupTransform("/root", "/object_65", rospy.Time())
        # obj_65 = np.array(translation)
        # obj_65[2] = 1
        # obj_65 = obj_65.reshape(3,1)
        # print('obj_65:', obj_65)
        obj_65 = np.array([-0.084, -0.607,1]).reshape(3,1)

        # 2) Calibration: Affine Transformation
        pts_obj = np.float32([[0.160, -0.666], [-0.148, -0.633],[-0.147, -0.443]])
        pts_arm = np.float32([[0.091, -0.629], [-0.110, -0.626], [-0.134, -0.523]])
        M_obj = cv2.getAffineTransform(pts_obj, pts_arm)
        # print('Matrix:', M_obj)
        cali_armPose = np.dot(M_obj, obj_65)
        bias = np.array([-0.025,  0.021]).reshape(2,1)
        cali_armPose = cali_armPose - bias
        # print('cali_armPose:', cali_armPose)
        # 3) Plane a Goal Pose
        pose_target = geometry_msgs.msg.Pose()  # set up pose_target =[0 0 0 0 0 0 0]
        pose_target.position.x = np.float(cali_armPose[0])
        pose_target.position.y = np.float(cali_armPose[1])
        pose_target.position.z = 0.036
        Quaternion = (0.555, 0.828, 0.077, -0.017)      #p2
        pose_target.orientation.x = np.float(Quaternion[0])
        pose_target.orientation.y = np.float(Quaternion[1])
        pose_target.orientation.z = np.float(Quaternion[2])
        pose_target.orientation.w = np.float(Quaternion[3])
        # 4) Execute planning
        # arm_group.set_pose_target(pose_target)
        # plan = arm_group.go()
        return pose_target

    def servo(self, val):
        def stop_callback(event):
            print('grasping 10 seconds!')
            rospy.signal_shutdown("Just stopping publishing...")

        rate = rospy.Rate(3)
        # rospy.Timer(rospy.Duration(10), stop_callback)
        while not rospy.is_shutdown():
            self.pub.publish(val)
            rate.sleep()

if __name__ == '__main__':
    auto_grasping()




# Step 1) Approach Position
moveit_commander.roscpp_initialize(sys.argv)
robot = moveit_commander.RobotCommander()
arm_group = moveit_commander.MoveGroupCommander("arm")

pose_target = auto_grasping().affineTransformation()
arm_group.set_pose_target(pose_target)
plan = arm_group.go()


# Step 2) Grasping Position
pose_target.position.z = 0.02
arm_group.set_pose_target(pose_target)
plan = arm_group.go()


# Step 3) Close fingers
auto_grasping().servo(50)


# # Step 4) Collecting Data  Position
# pose_target.position.z = 0.036
# arm_group.set_pose_target(pose_target)
# plan = arm_group.go()
#
#
# # Step 5) Machine Learning
# import ml_predictions_v0 as ml
# # ml.ml_pred()
#
# # Step 6) Grasping Position
# pose_target.position.z = 0.02
# arm_group.set_pose_target(pose_target)
# plan = arm_group.go()
#
# # Step 7) Open fingers
# auto_grasping().servo(0)
#
#
# # Step 4) Collecting Data  Position
# pose_target.position.z = 0.036
# arm_group.set_pose_target(pose_target)
# plan = arm_group.go()
# print('pose_target=', pose_target)






# Step 6) Completion
moveit_commander.roscpp_shutdown()
exit()
