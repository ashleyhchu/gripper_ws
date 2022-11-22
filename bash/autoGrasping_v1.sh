#!/usr/bin/env bash


clear
echo "0.0) initial JACO arm."
rosrun kinova_demo joints_action_client.py -v  j2n6s300 degree -- 275 165 56 240 83 76    # Home Position

echo "1.0)Arm Sequence Planning"
for i in {1..1}; do
    echo "1.1) auto detecting object65"
    rosrun auto_grasp affineTransf.py
    echo "1.2) collectData."
    # rosrun kinova_demo joints_action_client.py -v  j2n6s300 degree -- 265 255 138 336 89 75     # Grasping position
    rostopic pub -1 servo_HS645MG std_msgs/UInt16 50   # close gripper
    rosrun kinova_demo joints_action_client.py -v  j2n6s300 degree -- 267 252 145 329 103 70    # collectionData position
    # rosrun machine-learning dc_realtime.py # collecting data one gripper closing
    # echo "1.3) machine learning"
    # rosrun machine-learning ml_predictions.py
    # var=$(python ml_predictions.py); #echo $var
    #     if ((var == 10)); then
    #         echo "This is a fresh red apple."
    #         rosrun kinova_demo joints_action_client.py -v  j2n6s300 degree -- 291 263 191 243 214 61    # whitePlate-1
    #         rosrun kinova_demo joints_action_client.py -v  j2n6s300 degree -- 291 273 199 243 214 61    # whitePlate-2
    #         rostopic pub -1 servo_HS645MG std_msgs/UInt16 0
    #         rosrun kinova_demo joints_action_client.py -v  j2n6s300 degree -- 291 263 191 243 214 61    # whitePlate-1
    #         rosrun kinova_demo joints_action_client.py -v  j2n6s300 degree -- 273 212 142 260 196 76    # Approach position
    #     elif ((var == 11)); then
    #         echo "This is an aging red apple."
    #         rosrun kinova_demo joints_action_client.py -v  j2n6s300 degree -- 291 263 191 243 214 61    # whitePlate-1
    #         rosrun kinova_demo joints_action_client.py -v  j2n6s300 degree -- 291 273 199 243 214 61    # whitePlate-2
    #         rostopic pub -1 servo_HS645MG std_msgs/UInt16 0
    #         rosrun kinova_demo joints_action_client.py -v  j2n6s300 degree -- 291 263 191 243 214 61    # whitePlate-1
    #         rosrun kinova_demo joints_action_client.py -v  j2n6s300 degree -- 273 212 142 260 196 76    # Approach position
    #     elif ((var == 20)); then
    #       echo "This is a fresh green apple."
    #       rosrun kinova_demo joints_action_client.py -v  j2n6s300 degree -- 251 263 191 243 214 61    # greenPlate-1
    #       rosrun kinova_demo joints_action_client.py -v  j2n6s300 degree -- 251 273 200 243 214 61    # greenPlate-2
    #       rostopic pub -1 servo_HS645MG std_msgs/UInt16 0
    #       rosrun kinova_demo joints_action_client.py -v  j2n6s300 degree -- 251 263 191 243 214 61    # greenPlate-1
    #       rosrun kinova_demo joints_action_client.py -v  j2n6s300 degree -- 273 212 142 260 196 76    # Approach position
    #     elif ((var ==30)); then
    #         echo "This is a fresh tomato."
    #         rosrun kinova_demo joints_action_client.py -v  j2n6s300 degree -- 291 263 191 243 214 61    # whitePlate-1
    #         rosrun kinova_demo joints_action_client.py -v  j2n6s300 degree -- 291 273 199 243 214 61    # whitePlate-2
    #         rostopic pub -1 servo_HS645MG std_msgs/UInt16 0
    #         rosrun kinova_demo joints_action_client.py -v  j2n6s300 degree -- 291 263 191 243 214 61    # whitePlate-1
    #         rosrun kinova_demo joints_action_client.py -v  j2n6s300 degree -- 273 212 142 260 196 76    # Approach position
    #     else
    #         echo "This is not fruit."
    #         rosrun kinova_demo joints_action_client.py -v  j2n6s300 degree -- 273 281 216 258 197 76    # Grasp  position
    #         rostopic pub -1 servo_HS645MG std_msgs/UInt16 0
    #         rosrun kinova_demo joints_action_client.py -v  j2n6s300 degree -- 273 212 142 260 196 76    # Approach position
    #     fi
    echo "1.4) This is a round."
done
# rosrun kinova_demo joints_action_client.py -v  j2n6s300 degree -- 273 212 142 260 196 76    # Approach position
exit
