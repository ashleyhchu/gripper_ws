# Install script for directory: /home/ash/gripper_ws/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/ash/gripper_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ash/gripper_ws/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ash/gripper_ws/install" TYPE PROGRAM FILES "/home/ash/gripper_ws/build/catkin_generated/installspace/_setup_util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ash/gripper_ws/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ash/gripper_ws/install" TYPE PROGRAM FILES "/home/ash/gripper_ws/build/catkin_generated/installspace/env.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ash/gripper_ws/install/setup.bash;/home/ash/gripper_ws/install/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ash/gripper_ws/install" TYPE FILE FILES
    "/home/ash/gripper_ws/build/catkin_generated/installspace/setup.bash"
    "/home/ash/gripper_ws/build/catkin_generated/installspace/local_setup.bash"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ash/gripper_ws/install/setup.sh;/home/ash/gripper_ws/install/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ash/gripper_ws/install" TYPE FILE FILES
    "/home/ash/gripper_ws/build/catkin_generated/installspace/setup.sh"
    "/home/ash/gripper_ws/build/catkin_generated/installspace/local_setup.sh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ash/gripper_ws/install/setup.zsh;/home/ash/gripper_ws/install/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ash/gripper_ws/install" TYPE FILE FILES
    "/home/ash/gripper_ws/build/catkin_generated/installspace/setup.zsh"
    "/home/ash/gripper_ws/build/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ash/gripper_ws/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ash/gripper_ws/install" TYPE FILE FILES "/home/ash/gripper_ws/build/catkin_generated/installspace/.rosinstall")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/ash/gripper_ws/build/gtest/cmake_install.cmake")
  include("/home/ash/gripper_ws/build/kinova-ros/kinova_bringup/cmake_install.cmake")
  include("/home/ash/gripper_ws/build/kinova-ros/kinova_control/cmake_install.cmake")
  include("/home/ash/gripper_ws/build/kinova-ros/kinova_gazebo/cmake_install.cmake")
  include("/home/ash/gripper_ws/build/motionPlanning/ros_comm-melodic-devel/ros_comm/cmake_install.cmake")
  include("/home/ash/gripper_ws/build/motionPlanning/ros_comm-melodic-devel/tools/rosgraph/cmake_install.cmake")
  include("/home/ash/gripper_ws/build/motionPlanning/ros_comm-melodic-devel/tools/rosmaster/cmake_install.cmake")
  include("/home/ash/gripper_ws/build/motionPlanning/ros_comm-melodic-devel/tools/rosparam/cmake_install.cmake")
  include("/home/ash/gripper_ws/build/motionPlanning/ros_comm-melodic-devel/clients/rospy/cmake_install.cmake")
  include("/home/ash/gripper_ws/build/motionPlanning/ros_comm-melodic-devel/tools/rosservice/cmake_install.cmake")
  include("/home/ash/gripper_ws/build/motionPlanning/ros_comm-melodic-devel/tools/roslaunch/cmake_install.cmake")
  include("/home/ash/gripper_ws/build/perception/realsense-ros/realsense2_description/cmake_install.cmake")
  include("/home/ash/gripper_ws/build/motionPlanning/ros_comm-melodic-devel/utilities/roslz4/cmake_install.cmake")
  include("/home/ash/gripper_ws/build/motionPlanning/ros_comm-melodic-devel/tools/rostest/cmake_install.cmake")
  include("/home/ash/gripper_ws/build/motionPlanning/ros_comm-melodic-devel/test/test_roslib_comm/cmake_install.cmake")
  include("/home/ash/gripper_ws/build/motionPlanning/ros_comm-melodic-devel/utilities/xmlrpcpp/cmake_install.cmake")
  include("/home/ash/gripper_ws/build/motionPlanning/ros_comm-melodic-devel/clients/roscpp/cmake_install.cmake")
  include("/home/ash/gripper_ws/build/dataAnalysis/arduino-ros/cmake_install.cmake")
  include("/home/ash/gripper_ws/build/motionPlanning/auto_grasp/cmake_install.cmake")
  include("/home/ash/gripper_ws/build/dataAnalysis/droidspeak/cmake_install.cmake")
  include("/home/ash/gripper_ws/build/dataAnalysis/machine-learning/cmake_install.cmake")
  include("/home/ash/gripper_ws/build/motionPlanning/ros_comm-melodic-devel/tools/rosout/cmake_install.cmake")
  include("/home/ash/gripper_ws/build/motionPlanning/ros_comm-melodic-devel/utilities/message_filters/cmake_install.cmake")
  include("/home/ash/gripper_ws/build/motionPlanning/ros_comm-melodic-devel/tools/rosbag_storage/cmake_install.cmake")
  include("/home/ash/gripper_ws/build/motionPlanning/ros_comm-melodic-devel/tools/rosmsg/cmake_install.cmake")
  include("/home/ash/gripper_ws/build/motionPlanning/ros_comm-melodic-devel/tools/rosnode/cmake_install.cmake")
  include("/home/ash/gripper_ws/build/motionPlanning/ros_comm-melodic-devel/tools/rostopic/cmake_install.cmake")
  include("/home/ash/gripper_ws/build/motionPlanning/jaco-gym/sphere_description/cmake_install.cmake")
  include("/home/ash/gripper_ws/build/motionPlanning/ros_comm-melodic-devel/test/test_rosbag_storage/cmake_install.cmake")
  include("/home/ash/gripper_ws/build/motionPlanning/ros_comm-melodic-devel/test/test_roscpp/cmake_install.cmake")
  include("/home/ash/gripper_ws/build/motionPlanning/ros_comm-melodic-devel/test/test_rosgraph/cmake_install.cmake")
  include("/home/ash/gripper_ws/build/motionPlanning/ros_comm-melodic-devel/test/test_roslaunch/cmake_install.cmake")
  include("/home/ash/gripper_ws/build/motionPlanning/ros_comm-melodic-devel/test/test_rosmaster/cmake_install.cmake")
  include("/home/ash/gripper_ws/build/motionPlanning/ros_comm-melodic-devel/test/test_rosparam/cmake_install.cmake")
  include("/home/ash/gripper_ws/build/motionPlanning/ros_comm-melodic-devel/tools/topic_tools/cmake_install.cmake")
  include("/home/ash/gripper_ws/build/motionPlanning/ros_comm-melodic-devel/tools/rosbag/cmake_install.cmake")
  include("/home/ash/gripper_ws/build/kinova-ros/kinova_msgs/cmake_install.cmake")
  include("/home/ash/gripper_ws/build/motionPlanning/ros_comm-melodic-devel/utilities/roswtf/cmake_install.cmake")
  include("/home/ash/gripper_ws/build/perception/object_detection_2d/cmake_install.cmake")
  include("/home/ash/gripper_ws/build/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/cmake_install.cmake")
  include("/home/ash/gripper_ws/build/motionPlanning/ros_comm-melodic-devel/test/test_rospy/cmake_install.cmake")
  include("/home/ash/gripper_ws/build/motionPlanning/ros_comm-melodic-devel/test/test_rosservice/cmake_install.cmake")
  include("/home/ash/gripper_ws/build/motionPlanning/ros_comm-melodic-devel/test/test_rostest/cmake_install.cmake")
  include("/home/ash/gripper_ws/build/motionPlanning/ros_comm-melodic-devel/test/test_rostopic/cmake_install.cmake")
  include("/home/ash/gripper_ws/build/perception/find-object-melodic-devel/cmake_install.cmake")
  include("/home/ash/gripper_ws/build/kinova-ros/kinova_driver/cmake_install.cmake")
  include("/home/ash/gripper_ws/build/kinova-ros/kinova_demo/cmake_install.cmake")
  include("/home/ash/gripper_ws/build/perception/realsense-ros/realsense2_camera/cmake_install.cmake")
  include("/home/ash/gripper_ws/build/kinova-ros/kinova_description/cmake_install.cmake")
  include("/home/ash/gripper_ws/build/kinova-ros/kinova_moveit/robot_configs/j2n6s300_moveit_config/cmake_install.cmake")
  include("/home/ash/gripper_ws/build/kinova-ros/kinova_moveit/robot_configs/j2s6s300_moveit_config/cmake_install.cmake")
  include("/home/ash/gripper_ws/build/kinova-ros/kinova_moveit/robot_configs/j2s7s300_moveit_config/cmake_install.cmake")
  include("/home/ash/gripper_ws/build/kinova-ros/kinova_moveit/robot_configs/m1n6s300_moveit_config/cmake_install.cmake")
  include("/home/ash/gripper_ws/build/kinova-ros/kinova_moveit/inverse_kinematics_plugins/ikfast/j2n6s300_ikfast/cmake_install.cmake")
  include("/home/ash/gripper_ws/build/kinova-ros/kinova_moveit/inverse_kinematics_plugins/ikfast/j2s6s300_ikfast/cmake_install.cmake")
  include("/home/ash/gripper_ws/build/kinova-ros/kinova_moveit/inverse_kinematics_plugins/ikfast/j2s7s300_ikfast/cmake_install.cmake")
  include("/home/ash/gripper_ws/build/kinova-ros/kinova_moveit/inverse_kinematics_plugins/ikfast/m1n6s300_ikfast/cmake_install.cmake")
  include("/home/ash/gripper_ws/build/kinova-ros/kinova_moveit/kinova_arm_moveit_demo/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/ash/gripper_ws/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
