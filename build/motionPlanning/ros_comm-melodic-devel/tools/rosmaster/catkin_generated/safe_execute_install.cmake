execute_process(COMMAND "/home/ash/gripper_ws/build/motionPlanning/ros_comm-melodic-devel/tools/rosmaster/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/ash/gripper_ws/build/motionPlanning/ros_comm-melodic-devel/tools/rosmaster/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
