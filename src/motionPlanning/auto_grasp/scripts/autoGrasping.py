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

from std_msgs.msg import Int16MultiArray
import csv
import datetime
# import termios, fcntl, os

import os
import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn import svm
import glob
# =================================================================

class auto_grasping(object):
    def __init__(self):
        rospy.init_node('move_group_python_interface_jaco', anonymous=True)
        self.pub = rospy.Publisher('/servo_HS645MG', UInt16, queue_size=1)
        self.colorSensorPot = [0.0, 0.0, 0.0, 0.0]
        self.forceSensor = [0.0, 0.0, 0.0]

    def affineTransformation(self):
        # 1) obtain object_65 position
        t = TransformListener ()
        t.waitForTransform("/root", "/object_65", rospy.Time(), rospy.Duration(3.0))
        (translation, rotation) = t.lookupTransform("/root", "/object_65", rospy.Time())
        obj_65 = np.array(translation)
        obj_65[2] = 1
        obj_65 = obj_65.reshape(3,1)
        # obj_65 = np.array([-0.084, -0.607,1]).reshape(3,1)

        # 2) Calibration: Affine Transformation
        pts_obj = np.float32([[0.160, -0.666], [-0.148, -0.633],[-0.147, -0.443]])
        pts_arm = np.float32([[0.091, -0.629], [-0.110, -0.626], [-0.134, -0.523]])
        M_obj = cv2.getAffineTransform(pts_obj, pts_arm)
        # print('Matrix:', M_obj)
        cali_armPose = np.dot(M_obj, obj_65)
        print('cali_armPose_1:', cali_armPose)
        bias = np.array([-0.015,  0.040]).reshape(2,1)
        cali_armPose = cali_armPose - bias
        print('cali_armPose_2:', cali_armPose)        #-0.0279683

        # 3) Plane a Goal Pose
        pose_target = geometry_msgs.msg.Pose()  # set up pose_target =[0 0 0 0 0 0 0]
        pose_target.position.x = np.float(cali_armPose[0])
        pose_target.position.y = np.float(cali_armPose[1])
        pose_target.position.z = 0.15       # Approach position
        Quaternion = (0, 1, 0, 0)
        pose_target.orientation.x = np.float(Quaternion[0])
        pose_target.orientation.y = np.float(Quaternion[1])
        pose_target.orientation.z = np.float(Quaternion[2])
        pose_target.orientation.w = np.float(Quaternion[3])
        return pose_target

    def servo(self, val):
        rate = rospy.Rate(1000)
        ctrl_c = False
        while not ctrl_c:
            connections = self.pub.get_num_connections()
            if connections > 0:
                self.pub.publish(val)
                ctrl_c = True
                print('servo_action')
            else:
                rate.sleep()

    def dataCollector(self):
        if len(sys.argv) > 1:
            subject_name = sys.argv[1]
        else:
            subject_name = "realTime"

        dc = auto_grasping()
        file_name = subject_name + "_" + str( datetime.datetime.now() ) + ".csv"
        column_headers = ['Red', 'Green', 'Blue', 'Weight1', 'Pot1', 'Weight2', 'Pot2', 'Weight3', 'Pot3']

        # iterationauto_grasping()
        with open(file_name, 'a') as writeFile:     # a: Open for writing.
            data_writer = csv.writer(writeFile)
            data_writer.writerow(column_headers)
            i = 1
            for i in range(10):
                rgb_pot, weight_fingers= dc.get_row()
                data_writer.writerow([rgb_pot[0], rgb_pot[1], rgb_pot[2], weight_fingers[0], rgb_pot[3], weight_fingers[1], rgb_pot[3], weight_fingers[2], rgb_pot[3]])
                if (i==10):
                    exit()

    def getColorPot(self):
        rospy.Subscriber('/rgb_pot', Int16MultiArray, self.setColorPot)
        return self.colorSensorPot

    def setColorPot(self, data):
        self.colorSensorPot[0] = data.data[0]
        self.colorSensorPot[1] = data.data[1]
        self.colorSensorPot[2] = data.data[2]
        self.colorSensorPot[3] = data.data[3]

    def getForce(self):
        rospy.Subscriber("/weight_finger1", UInt16, self.setFinger1)
        rospy.wait_for_message("/weight_finger1", UInt16)
        rospy.Subscriber("/weight_finger2", UInt16, self.setFinger2)
        rospy.wait_for_message("/weight_finger2", UInt16)
        rospy.Subscriber("/weight_finger3", UInt16, self.setFinger3)
        rospy.wait_for_message("/weight_finger3", UInt16)
        return self.forceSensor

    def setFinger1(self, data):
        self.forceSensor[0] = data.data

    def setFinger2(self, data):
        self.forceSensor[1] = data.data

    def setFinger3(self, data):
        self.forceSensor[2] = data.data

    def get_row(self):
        self.getColorPot()
        self.getForce()
        return self.colorSensorPot, self.forceSensor

    def ml(self):
        # 1. import fruitDataset.csv
        os.chdir("/home/ash/gripper_ws/src/dataAnalysis/machine-learning/scripts/rawData/")
        ds = pd.read_csv('fruitDataset.csv')
        ds = ds.drop('Unnamed: 0', axis=1)
        # 2. split Train/Test Dataset
        target_name = 'Fruit'
        X = ds.drop('Fruit', axis=1)
        y = ds[target_name]
        X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=123, stratify=y)
        # 3. fit the model
        clf = svm.SVC(C=1, kernel='linear', gamma='auto', random_state=1)
        clf.fit(X_train, y_train)
        predictions = clf.predict(X_test)
        # print(predictions)
        # step 1 to 3 for training my model_clf
        # ---------------------------------------------------------------------------------------------
        # step 4 for obtaing new testing data to put into my model_clf
        # 4.0) real-time prediction
        # 4.1) import real-time raw data
        os.chdir("/home/ash/gripper_ws/src/motionPlanning/auto_grasp/scripts")      # if code didn't work, please check path.
        all_files = glob.glob("*.csv")
        li = []
        for filename in all_files:
            df = pd.read_csv(filename, index_col=None, header=0)
            li.append(df)
        frame = pd.concat(li, axis=0, ignore_index=True)
        frame = frame.mask(frame>1000, 0)
        print('frame:', frame)
        # 4.2) do median() for rawData_realtime
        row = list(range(0,len(frame),10))
        df = []
        for i in row:
            df_t = pd.concat([frame[i:i+10].median()], axis=1)
            df.append(df_t)
        df = pd.concat(df, axis=1, ignore_index=True)
        df = df.T
        df_realtime = df.rename(columns={'Weight1':'W1', 'Weight2':'W2', 'Weight3':'W3'})
        # print(df_realtime)
        # 4.3) real-time prediction
        X_realTime = df_realtime
        # print(type(X_realTime)) #<class 'pandas.core.frame.DataFrame'>
        print('X_realTime:', X_realTime)
        y_realTime = clf.predict(X_realTime)
        # print(type(y_realTime))   #<type 'numpy.ndarray'>
        realtime_predictions = np.int(y_realTime[0])
        # print(realtime_predictions)
        return realtime_predictions


if __name__ == '__main__':
    auto_grasping()


#  Step 0) Initialization of Robot
moveit_commander.roscpp_initialize(sys.argv)
robot = moveit_commander.RobotCommander()
arm_group = moveit_commander.MoveGroupCommander("arm")


# Step 1) Grasping Position (z=0.0136)
pose_target = auto_grasping().affineTransformation()
arm_group.set_pose_target(pose_target)
plan = arm_group.go()
# pose_target.position.z = 0.015
pose_target.position.z = 0.008       # for tomato grasping
arm_group.set_pose_target(pose_target)
plan = arm_group.go()
rospy.sleep(2.0)

# Step 2) Close fingers    arm_group.set_pose_target(pose_target)
plan = arm_group.go()
auto_grasping().servo(50)
rospy.sleep(3)


# Step 3) Collecting Data  Position
pose_target.position.z = 0.15
arm_group.set_pose_target(pose_target)
plan = arm_group.go()


# Step 4) Collect Data  real-time
auto_grasping().dataCollector()


# Step 5) Machine Learning
var = auto_grasping().ml()
print('Label=', var)


# Step 6) Classification Tasks
if var == 1:
    print("This is not fruit.")
    pose_target.position.y -= 0.1
    arm_group.set_pose_target(pose_target)
    plan = arm_group.go()

    pose_target.position.z = 0.02
    arm_group.set_pose_target(pose_target)
    plan = arm_group.go()
    rospy.sleep(2)

elif var == 2:
    print("This is a red apple.")
    Translation = (-0.202, -0.635, 0.05)
    pose_target.position.x = np.float(Translation[0])
    pose_target.position.y = np.float(Translation[1])
    pose_target.position.z = np.float(Translation[2])

    arm_group.set_pose_target(pose_target)
    plan = arm_group.go()
    rospy.sleep(2)

elif var == 3:
    print("This is a green apple.")
    Translation = (0.260, -0.620, 0.07)
    pose_target.position.x = np.float(Translation[0])
    pose_target.position.y = np.float(Translation[1])
    pose_target.position.z = np.float(Translation[2])
    arm_group.set_pose_target(pose_target)
    plan = arm_group.go()
    rospy.sleep(2)

elif var == 4:
    print("This is a fresh tomato.")
    Translation = (0.260, -0.620, 0.07)
    pose_target.position.x = np.float(Translation[0])
    pose_target.position.y = np.float(Translation[1])
    pose_target.position.z = np.float(Translation[2])

    arm_group.set_pose_target(pose_target)
    plan = arm_group.go()

elif var == 5:
    print("This is an aging tomato.")
    Translation = (-0.202, -0.635, 0.05)
    pose_target.position.x = np.float(Translation[0])
    pose_target.position.y = np.float(Translation[1])
    pose_target.position.z = np.float(Translation[2])

    arm_group.set_pose_target(pose_target)
    plan = arm_group.go()

else:
    print("There is no object.")
    arm_group.set_named_target("Kinova_Home")
    plan = arm_group.go()


# Step 7) Open fingers
auto_grasping().servo(0)
rospy.sleep(2)
pose_target.position.z = 0.15
arm_group.set_pose_target(pose_target)
plan = arm_group.go()


# Step 8) Go back Home  Position
arm_group.set_named_target("Kinova_Home")
plan = arm_group.go()


# Step 9) Completion
moveit_commander.roscpp_shutdown()
exit()
