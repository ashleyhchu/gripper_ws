#!/usr/bin/env bash
# The hard-codeing  shows the gripper is grasping an object.

clear
echo "0) initial JACO arm."
# roscore &
# source ~/.bashrc
# roslaunch kinova_bringup kinova_robot.launch
# roslaunch j2n6s300_moveit_config j2n6s300_demo.launch db:=true
# rosrun rosserial_python serial_node.py _port:=/dev/ttyACM1 _baud:=115200
# rosrun kinova_demo joints_action_client.py -v  j2n6s300 degree -- 275 169 59 242 85 76          # Home Pose
# -----------------------------------------------------------------------------------------------------------------------------------------
# rosrun kinova_demo joints_action_client.py -v  j2n6s300 degree -- 273 215 143 259 195 76     # Approach position
# rosrun machine-learning dataCollector.py # collect data before closing fingers




for i in {1..10}; do
    echo "1) collectData."
    # rosrun kinova_demo joints_action_client.py -v  j2n6s300 degree -- 273 281.8 216 258 197 76    # Grasp  position
    rosrun kinova_demo joints_action_client.py -v  j2n6s300 degree -- 273 278 209 260 197 76        # Grasp  position
    rostopic pub -1 servo_HS645MG std_msgs/UInt16 60   # close gripper
    rosrun kinova_demo joints_action_client.py -v  j2n6s300 degree -- 274 263 191 243 214 61    # arm moves upward.
    rosrun machine-learning dataCollector.py # collect data after closing
    echo "2) finishCollectingData."
    rosrun kinova_demo joints_action_client.py -v  j2n6s300 degree -- 273 278 209 260 197 76    # arm moves back Grasp  position
    rostopic pub -1 servo_HS645MG std_msgs/UInt16 0
    rosrun kinova_demo joints_action_client.py -v  j2n6s300 degree -- 274 263 191 243 214 61
    echo "3) This is ${i} round."
done
rosrun kinova_demo joints_action_client.py -v  j2n6s300 degree -- 274 263 191 243 214 61    # arm moves upward.
# rosrun kinova_demo joints_action_client.py -v  j2n6s300 degree -- 273 215 143 259 195 76     # Approach position
exit
