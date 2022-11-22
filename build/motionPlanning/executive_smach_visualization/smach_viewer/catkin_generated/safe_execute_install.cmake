execute_process(COMMAND "/home/ash/gripper_ws/build/motionPlanning/executive_smach_visualization/smach_viewer/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/ash/gripper_ws/build/motionPlanning/executive_smach_visualization/smach_viewer/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
