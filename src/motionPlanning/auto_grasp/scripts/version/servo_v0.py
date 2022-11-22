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
        # self.pub = rospy.Publisher('/servo_HS645MG', UInt16, queue_size=1)
        # self.stop = rospy.signal_shutdown("Just stopping publishing...")

    # def stop_callback(event):
    #     print('grasping 10 seconds!')
    #     rospy.signal_shutdown("Just stopping publishing...")

    def servo_1(self, val):
        def stop_callback(event):
            print('grasping 10 seconds!')
            rospy.signal_shutdown("Just stopping publishing...")

        rate = rospy.Rate(1000)
        rospy.Timer(rospy.Duration(10), stop_callback)
        pub = rospy.Publisher('/servo_HS645MG', UInt16, queue_size=1)
        while not rospy.is_shutdown():
            pub.publish(val)
            rate.sleep()

    def servo_2(self, val):
        rate = rospy.Rate(1000)
        ctrl_c = False
        while not ctrl_c:
            connections = self.pub.get_num_connections()
            if connections > 0:
                self.pub.publish(val)
                ctrl_c = True
                print('close')
            else:
                rate.sleep()




if __name__ == '__main__':
    auto_grasping()




# Step 1) Approach Position




# Step 2) Grasping Position



# Step 3) Close fingers
auto_grasping().servo(50)

# auto_grasping().servo(50)

# Step 6) Completion
# moveit_commander.roscpp_shutdown()
# exit()
