#!/usr/bin/env bash
# The hard-codeing  shows the gripper is grasping an object.

clear
echo "0) initial JACO arm."
# rosrun kinova_demo joints_action_client.py -v  j2n6s300 degree -- 273 212 142 260 196 76    # Approach position
# rosrun kinova_demo joints_action_client.py -v  j2n6s300 degree -- 273 281 216 258 197 76    # Grasp  position

echo "1.0) collect rawData"
for i in {1..1}; do
    echo "1.1) collectData."
    # rosrun kinova_demo joints_action_client.py -v  j2n6s300 degree -- 273 281 216 258 197 76    # Grasp  position
    # rosrun kinova_demo joints_action_client.py -v  j2n6s300 degree -- 273 281.8 216 258 197 76    # Grasp  position
    # rosrun kinova_demo joints_action_client.py -v  j2n6s300 degree -- 273 278 208 260 197 76  # Grasp  position
    rosrun kinova_demo joints_action_client.py -v  j2n6s300 degree -- 273 278 209 260 197 76
    rostopic pub -1 servo_HS645MG std_msgs/UInt16 60   # close gripper
    rosrun kinova_demo joints_action_client.py -v  j2n6s300 degree -- 274 263 191 243 214 61    # collectionData position
    rosrun machine-learning dc_realtime.py # collect data for after closing

    echo "1.2) machine learning"
    rosrun machine-learning ml_predictions.py
    var=$(python ml_predictions.py); echo "label=$var"
        if ((var == 1)); then
            echo"This is NOT a fruit."
            rosrun kinova_demo joints_action_client.py -v  j2n6s300 degree -- 273 278 209 260 197 76    # back to Grasp  position
            rostopic pub -1 servo_HS645MG std_msgs/UInt16 0
            rosrun kinova_demo joints_action_client.py -v  j2n6s300 degree -- 274 263 191 243 214 61    # collectionData position
        elif ((var == 2)); then
            echo "This is a RED apple."
            rosrun kinova_demo joints_action_client.py -v  j2n6s300 degree -- 291 263 191 243 214 61    # whitePlate-1
            rosrun kinova_demo joints_action_client.py -v  j2n6s300 degree -- 291 273 199 243 214 61    # whitePlate-2
            rostopic pub -1 servo_HS645MG std_msgs/UInt16 0
            rosrun kinova_demo joints_action_client.py -v  j2n6s300 degree -- 291 263 191 243 214 61    # whitePlate-1
            rosrun kinova_demo joints_action_client.py -v  j2n6s300 degree -- 274 263 191 243 214 61    # collectionData position
        elif ((var == 3)); then
          echo "This is a GREEN apple."
          rosrun kinova_demo joints_action_client.py -v  j2n6s300 degree -- 251 263 191 243 214 61    # greenPlate-1
          rosrun kinova_demo joints_action_client.py -v  j2n6s300 degree -- 251 273 200 243 214 61    # greenPlate-2
          rostopic pub -1 servo_HS645MG std_msgs/UInt16 0
          rosrun kinova_demo joints_action_client.py -v  j2n6s300 degree -- 251 263 191 243 214 61    # greenPlate-1
          rosrun kinova_demo joints_action_client.py -v  j2n6s300 degree -- 274 263 191 243 214 61    # collectionData position
      elif ((var ==4)); then
            echo "This is a FRESH tomato."
            rosrun kinova_demo joints_action_client.py -v  j2n6s300 degree -- 251 263 191 243 214 61    # greenPlate-1
            rosrun kinova_demo joints_action_client.py -v  j2n6s300 degree -- 251 273 200 243 214 61    # greenPlate-2
            rostopic pub -1 servo_HS645MG std_msgs/UInt16 0
            rosrun kinova_demo joints_action_client.py -v  j2n6s300 degree -- 251 263 191 243 214 61    # greenPlate-1
            rosrun kinova_demo joints_action_client.py -v  j2n6s300 degree -- 274 263 191 243 214 61    # collectionData position
        elif ((var ==5)); then
              echo "This is an AGING  tomato."
              rosrun kinova_demo joints_action_client.py -v  j2n6s300 degree -- 291 263 191 243 214 61    # whitePlate-1
              rosrun kinova_demo joints_action_client.py -v  j2n6s300 degree -- 291 273 199 243 214 61    # whitePlate-2
              rostopic pub -1 servo_HS645MG std_msgs/UInt16 0
              rosrun kinova_demo joints_action_client.py -v  j2n6s300 degree -- 291 263 191 243 214 61    # whitePlate-1
              rosrun kinova_demo joints_action_client.py -v  j2n6s300 degree -- 274 263 191 243 214 61    # collectionData position
        else
            echo "There is NO object."
            rosrun kinova_demo joints_action_client.py -v  j2n6s300 degree -- 273 278 209 260 197 76    # back to Grasp  position
            rostopic pub -1 servo_HS645MG std_msgs/UInt16 0
            rosrun kinova_demo joints_action_client.py -v  j2n6s300 degree -- 274 263 191 243 214 61    # collectionData position
        fi
    echo "1.3) This is a round."
done

rosrun kinova_demo joints_action_client.py -v  j2n6s300 degree -- 274 263 191 243 214 61    # collectionData position

exit
