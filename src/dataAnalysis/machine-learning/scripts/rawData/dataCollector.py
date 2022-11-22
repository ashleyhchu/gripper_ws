#!/usr/bin/env python

import rospy
from std_msgs.msg import UInt16
from std_msgs.msg import Int16MultiArray
import sys
import csv
import datetime
import termios, fcntl, os


class dataCollector:
    def __init__(self):
        self.colorSensorPot = [0.0, 0.0, 0.0, 0.0]
        self.forceSensor = [0.0, 0.0, 0.0]


    def getColorPot(self):
        rospy.Subscriber('/rgb_pot', Int16MultiArray, self.setColorPot)
        # print (rospy.Subscriber('/rgb_pot', Int16MultiArray, self.setColorPot))
        return self.colorSensorPot

    def setColorPot(self,data):
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


if __name__ == '__main__':
    rospy.init_node('data_collector')
    if len(sys.argv) > 1:
        subject_name = sys.argv[1]
    else:
        subject_name = "tomatoFresh"    # changing the subject_name=" " each time to meet your experiment_name

    dc = dataCollector()
    file_name = subject_name + "_" + str( datetime.datetime.now() ) + ".csv"
    column_headers = ['ID', 'Red', 'Green', 'Blue', 'Weight1', 'Pot1', 'Weight2', 'Pot2', 'Weight3', 'Pot3', 'Fruit']

    # iteration
    with open(file_name, 'a') as writeFile:     # a: Open for writing.
        data_writer = csv.writer(writeFile)
        data_writer.writerow(column_headers)
        i = 1
        for i in range(10):
            rgb_pot, weight_fingers= dc.get_row()
            data_writer.writerow([i, rgb_pot[0], rgb_pot[1], rgb_pot[2], weight_fingers[0], rgb_pot[3], weight_fingers[1], rgb_pot[3], weight_fingers[2], rgb_pot[3]])
            if (i==10):
                exit()


    # termios.tcsetattr(fd, termios.TCSAFLUSH, oldterm)
    # fcntl.fcntl(fd, fcntl.F_SETFL, oldflags), 'Red', 'Green', 'Blue'
    # data_writer.writerow([i, rgb_pot[0], rgb_pot[1], rgb_pot[2], weight_fingers[0], rgb_pot[3], weight_fingers[1], rgb_pot[3], weight_fingers[2], rgb_pot[3], str(datetime.datetime.now())])
