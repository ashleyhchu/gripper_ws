execute_process(COMMAND "/home/ash/gripper_ws/build/motionPlanning/custom_gym_envs-master/ROS_packages/custom_ROS_envs/spawn_robot_tools_pkg/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/ash/gripper_ws/build/motionPlanning/custom_gym_envs-master/ROS_packages/custom_ROS_envs/spawn_robot_tools_pkg/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
