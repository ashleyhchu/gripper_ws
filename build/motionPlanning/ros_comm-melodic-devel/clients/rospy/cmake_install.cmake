# Install script for directory: /home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/clients/rospy

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/ash/gripper_ws/build/motionPlanning/ros_comm-melodic-devel/clients/rospy/catkin_generated/installspace/rospy.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rospy/cmake" TYPE FILE FILES
    "/home/ash/gripper_ws/build/motionPlanning/ros_comm-melodic-devel/clients/rospy/catkin_generated/installspace/rospyConfig.cmake"
    "/home/ash/gripper_ws/build/motionPlanning/ros_comm-melodic-devel/clients/rospy/catkin_generated/installspace/rospyConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rospy" TYPE FILE FILES "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/clients/rospy/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/home/ash/gripper_ws/build/motionPlanning/ros_comm-melodic-devel/clients/rospy/catkin_generated/safe_execute_install.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rospy/rosbuild" TYPE FILE FILES "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/clients/rospy/rosbuild/rospy.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rospy/rosbuild/scripts" TYPE PROGRAM FILES "/home/ash/gripper_ws/build/motionPlanning/ros_comm-melodic-devel/clients/rospy/catkin_generated/installspace/genmsg_py.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rospy/rosbuild/scripts" TYPE PROGRAM FILES "/home/ash/gripper_ws/build/motionPlanning/ros_comm-melodic-devel/clients/rospy/catkin_generated/installspace/gensrv_py.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rospy/rosbuild/scripts" TYPE PROGRAM FILES "/home/ash/gripper_ws/build/motionPlanning/ros_comm-melodic-devel/clients/rospy/catkin_generated/installspace/genutil.py")
endif()

