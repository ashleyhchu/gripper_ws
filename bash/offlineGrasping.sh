#!/usr/bin/env bash
# The hard-codeing  shows the gripper is grasping an object.

clear
echo "0) Start to grasp after 3 seconds."
sleep 3


for i in {1..1}; do
    echo "1) Close fingers"
    rostopic pub -1 servo_HS645MG std_msgs/UInt16 50   # close gripper

    echo "2) CollectData."
    rosrun machine-learning dc_realtime.py

    echo "3) SVM"
    rosrun machine-learning ml_predictions.py
    var=$(python ml_predictions.py)
    echo "vvv=$var"

    echo "4) Finish CollectingData."
    rostopic pub -1 servo_HS645MG std_msgs/UInt16 0

    echo "5) This is ${i} round."

done

# rosrun kinova_demo joints_action_client.py -v  j2n6s300 degree -- 274 263 191 243 214 61     # Approach position
exit
