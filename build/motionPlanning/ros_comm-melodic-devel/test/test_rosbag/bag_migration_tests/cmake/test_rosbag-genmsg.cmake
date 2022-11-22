# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "test_rosbag: 12 messages, 0 services")

set(MSG_I_FLAGS "-Itest_rosbag:/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current;-Irosgraph_msgs:/opt/ros/melodic/share/rosgraph_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(test_rosbag_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/Simple.msg" NAME_WE)
add_custom_target(_test_rosbag_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "test_rosbag" "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/Simple.msg" ""
)

get_filename_component(_filename "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/PartiallyMigrated.msg" NAME_WE)
add_custom_target(_test_rosbag_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "test_rosbag" "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/PartiallyMigrated.msg" "test_rosbag/MigratedExplicit:std_msgs/Header"
)

get_filename_component(_filename "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/MigratedExplicit.msg" NAME_WE)
add_custom_target(_test_rosbag_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "test_rosbag" "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/MigratedExplicit.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/Renamed5.msg" NAME_WE)
add_custom_target(_test_rosbag_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "test_rosbag" "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/Renamed5.msg" ""
)

get_filename_component(_filename "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/MigratedAddSub.msg" NAME_WE)
add_custom_target(_test_rosbag_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "test_rosbag" "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/MigratedAddSub.msg" "test_rosbag/Simple"
)

get_filename_component(_filename "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/MigratedMixed.msg" NAME_WE)
add_custom_target(_test_rosbag_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "test_rosbag" "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/MigratedMixed.msg" "test_rosbag/MigratedImplicit:test_rosbag/MigratedExplicit:std_msgs/Header"
)

get_filename_component(_filename "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/Constants.msg" NAME_WE)
add_custom_target(_test_rosbag_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "test_rosbag" "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/Constants.msg" ""
)

get_filename_component(_filename "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/SimpleMigrated.msg" NAME_WE)
add_custom_target(_test_rosbag_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "test_rosbag" "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/SimpleMigrated.msg" ""
)

get_filename_component(_filename "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/MigratedImplicit.msg" NAME_WE)
add_custom_target(_test_rosbag_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "test_rosbag" "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/MigratedImplicit.msg" "test_rosbag/MigratedExplicit:std_msgs/Header"
)

get_filename_component(_filename "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/SubUnmigrated.msg" NAME_WE)
add_custom_target(_test_rosbag_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "test_rosbag" "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/SubUnmigrated.msg" "test_rosbag/Unmigrated"
)

get_filename_component(_filename "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/Unmigrated.msg" NAME_WE)
add_custom_target(_test_rosbag_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "test_rosbag" "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/Unmigrated.msg" ""
)

get_filename_component(_filename "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/Converged.msg" NAME_WE)
add_custom_target(_test_rosbag_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "test_rosbag" "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/Converged.msg" "test_rosbag/SimpleMigrated"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(test_rosbag
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/Simple.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/test_rosbag
)
_generate_msg_cpp(test_rosbag
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/PartiallyMigrated.msg"
  "${MSG_I_FLAGS}"
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/MigratedExplicit.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/test_rosbag
)
_generate_msg_cpp(test_rosbag
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/MigratedExplicit.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/test_rosbag
)
_generate_msg_cpp(test_rosbag
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/Renamed5.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/test_rosbag
)
_generate_msg_cpp(test_rosbag
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/Unmigrated.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/test_rosbag
)
_generate_msg_cpp(test_rosbag
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/MigratedMixed.msg"
  "${MSG_I_FLAGS}"
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/MigratedImplicit.msg;/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/MigratedExplicit.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/test_rosbag
)
_generate_msg_cpp(test_rosbag
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/Constants.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/test_rosbag
)
_generate_msg_cpp(test_rosbag
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/SimpleMigrated.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/test_rosbag
)
_generate_msg_cpp(test_rosbag
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/MigratedImplicit.msg"
  "${MSG_I_FLAGS}"
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/MigratedExplicit.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/test_rosbag
)
_generate_msg_cpp(test_rosbag
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/SubUnmigrated.msg"
  "${MSG_I_FLAGS}"
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/Unmigrated.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/test_rosbag
)
_generate_msg_cpp(test_rosbag
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/MigratedAddSub.msg"
  "${MSG_I_FLAGS}"
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/Simple.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/test_rosbag
)
_generate_msg_cpp(test_rosbag
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/Converged.msg"
  "${MSG_I_FLAGS}"
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/SimpleMigrated.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/test_rosbag
)

### Generating Services

### Generating Module File
_generate_module_cpp(test_rosbag
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/test_rosbag
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(test_rosbag_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(test_rosbag_generate_messages test_rosbag_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/Simple.msg" NAME_WE)
add_dependencies(test_rosbag_generate_messages_cpp _test_rosbag_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/PartiallyMigrated.msg" NAME_WE)
add_dependencies(test_rosbag_generate_messages_cpp _test_rosbag_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/MigratedExplicit.msg" NAME_WE)
add_dependencies(test_rosbag_generate_messages_cpp _test_rosbag_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/Renamed5.msg" NAME_WE)
add_dependencies(test_rosbag_generate_messages_cpp _test_rosbag_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/MigratedAddSub.msg" NAME_WE)
add_dependencies(test_rosbag_generate_messages_cpp _test_rosbag_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/MigratedMixed.msg" NAME_WE)
add_dependencies(test_rosbag_generate_messages_cpp _test_rosbag_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/Constants.msg" NAME_WE)
add_dependencies(test_rosbag_generate_messages_cpp _test_rosbag_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/SimpleMigrated.msg" NAME_WE)
add_dependencies(test_rosbag_generate_messages_cpp _test_rosbag_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/MigratedImplicit.msg" NAME_WE)
add_dependencies(test_rosbag_generate_messages_cpp _test_rosbag_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/SubUnmigrated.msg" NAME_WE)
add_dependencies(test_rosbag_generate_messages_cpp _test_rosbag_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/Unmigrated.msg" NAME_WE)
add_dependencies(test_rosbag_generate_messages_cpp _test_rosbag_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/Converged.msg" NAME_WE)
add_dependencies(test_rosbag_generate_messages_cpp _test_rosbag_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(test_rosbag_gencpp)
add_dependencies(test_rosbag_gencpp test_rosbag_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS test_rosbag_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(test_rosbag
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/Simple.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/test_rosbag
)
_generate_msg_eus(test_rosbag
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/PartiallyMigrated.msg"
  "${MSG_I_FLAGS}"
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/MigratedExplicit.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/test_rosbag
)
_generate_msg_eus(test_rosbag
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/MigratedExplicit.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/test_rosbag
)
_generate_msg_eus(test_rosbag
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/Renamed5.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/test_rosbag
)
_generate_msg_eus(test_rosbag
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/Unmigrated.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/test_rosbag
)
_generate_msg_eus(test_rosbag
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/MigratedMixed.msg"
  "${MSG_I_FLAGS}"
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/MigratedImplicit.msg;/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/MigratedExplicit.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/test_rosbag
)
_generate_msg_eus(test_rosbag
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/Constants.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/test_rosbag
)
_generate_msg_eus(test_rosbag
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/SimpleMigrated.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/test_rosbag
)
_generate_msg_eus(test_rosbag
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/MigratedImplicit.msg"
  "${MSG_I_FLAGS}"
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/MigratedExplicit.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/test_rosbag
)
_generate_msg_eus(test_rosbag
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/SubUnmigrated.msg"
  "${MSG_I_FLAGS}"
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/Unmigrated.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/test_rosbag
)
_generate_msg_eus(test_rosbag
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/MigratedAddSub.msg"
  "${MSG_I_FLAGS}"
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/Simple.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/test_rosbag
)
_generate_msg_eus(test_rosbag
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/Converged.msg"
  "${MSG_I_FLAGS}"
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/SimpleMigrated.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/test_rosbag
)

### Generating Services

### Generating Module File
_generate_module_eus(test_rosbag
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/test_rosbag
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(test_rosbag_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(test_rosbag_generate_messages test_rosbag_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/Simple.msg" NAME_WE)
add_dependencies(test_rosbag_generate_messages_eus _test_rosbag_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/PartiallyMigrated.msg" NAME_WE)
add_dependencies(test_rosbag_generate_messages_eus _test_rosbag_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/MigratedExplicit.msg" NAME_WE)
add_dependencies(test_rosbag_generate_messages_eus _test_rosbag_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/Renamed5.msg" NAME_WE)
add_dependencies(test_rosbag_generate_messages_eus _test_rosbag_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/MigratedAddSub.msg" NAME_WE)
add_dependencies(test_rosbag_generate_messages_eus _test_rosbag_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/MigratedMixed.msg" NAME_WE)
add_dependencies(test_rosbag_generate_messages_eus _test_rosbag_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/Constants.msg" NAME_WE)
add_dependencies(test_rosbag_generate_messages_eus _test_rosbag_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/SimpleMigrated.msg" NAME_WE)
add_dependencies(test_rosbag_generate_messages_eus _test_rosbag_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/MigratedImplicit.msg" NAME_WE)
add_dependencies(test_rosbag_generate_messages_eus _test_rosbag_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/SubUnmigrated.msg" NAME_WE)
add_dependencies(test_rosbag_generate_messages_eus _test_rosbag_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/Unmigrated.msg" NAME_WE)
add_dependencies(test_rosbag_generate_messages_eus _test_rosbag_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/Converged.msg" NAME_WE)
add_dependencies(test_rosbag_generate_messages_eus _test_rosbag_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(test_rosbag_geneus)
add_dependencies(test_rosbag_geneus test_rosbag_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS test_rosbag_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(test_rosbag
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/Simple.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/test_rosbag
)
_generate_msg_lisp(test_rosbag
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/PartiallyMigrated.msg"
  "${MSG_I_FLAGS}"
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/MigratedExplicit.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/test_rosbag
)
_generate_msg_lisp(test_rosbag
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/MigratedExplicit.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/test_rosbag
)
_generate_msg_lisp(test_rosbag
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/Renamed5.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/test_rosbag
)
_generate_msg_lisp(test_rosbag
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/Unmigrated.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/test_rosbag
)
_generate_msg_lisp(test_rosbag
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/MigratedMixed.msg"
  "${MSG_I_FLAGS}"
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/MigratedImplicit.msg;/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/MigratedExplicit.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/test_rosbag
)
_generate_msg_lisp(test_rosbag
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/Constants.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/test_rosbag
)
_generate_msg_lisp(test_rosbag
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/SimpleMigrated.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/test_rosbag
)
_generate_msg_lisp(test_rosbag
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/MigratedImplicit.msg"
  "${MSG_I_FLAGS}"
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/MigratedExplicit.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/test_rosbag
)
_generate_msg_lisp(test_rosbag
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/SubUnmigrated.msg"
  "${MSG_I_FLAGS}"
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/Unmigrated.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/test_rosbag
)
_generate_msg_lisp(test_rosbag
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/MigratedAddSub.msg"
  "${MSG_I_FLAGS}"
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/Simple.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/test_rosbag
)
_generate_msg_lisp(test_rosbag
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/Converged.msg"
  "${MSG_I_FLAGS}"
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/SimpleMigrated.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/test_rosbag
)

### Generating Services

### Generating Module File
_generate_module_lisp(test_rosbag
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/test_rosbag
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(test_rosbag_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(test_rosbag_generate_messages test_rosbag_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/Simple.msg" NAME_WE)
add_dependencies(test_rosbag_generate_messages_lisp _test_rosbag_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/PartiallyMigrated.msg" NAME_WE)
add_dependencies(test_rosbag_generate_messages_lisp _test_rosbag_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/MigratedExplicit.msg" NAME_WE)
add_dependencies(test_rosbag_generate_messages_lisp _test_rosbag_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/Renamed5.msg" NAME_WE)
add_dependencies(test_rosbag_generate_messages_lisp _test_rosbag_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/MigratedAddSub.msg" NAME_WE)
add_dependencies(test_rosbag_generate_messages_lisp _test_rosbag_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/MigratedMixed.msg" NAME_WE)
add_dependencies(test_rosbag_generate_messages_lisp _test_rosbag_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/Constants.msg" NAME_WE)
add_dependencies(test_rosbag_generate_messages_lisp _test_rosbag_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/SimpleMigrated.msg" NAME_WE)
add_dependencies(test_rosbag_generate_messages_lisp _test_rosbag_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/MigratedImplicit.msg" NAME_WE)
add_dependencies(test_rosbag_generate_messages_lisp _test_rosbag_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/SubUnmigrated.msg" NAME_WE)
add_dependencies(test_rosbag_generate_messages_lisp _test_rosbag_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/Unmigrated.msg" NAME_WE)
add_dependencies(test_rosbag_generate_messages_lisp _test_rosbag_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/Converged.msg" NAME_WE)
add_dependencies(test_rosbag_generate_messages_lisp _test_rosbag_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(test_rosbag_genlisp)
add_dependencies(test_rosbag_genlisp test_rosbag_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS test_rosbag_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(test_rosbag
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/Simple.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/test_rosbag
)
_generate_msg_nodejs(test_rosbag
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/PartiallyMigrated.msg"
  "${MSG_I_FLAGS}"
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/MigratedExplicit.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/test_rosbag
)
_generate_msg_nodejs(test_rosbag
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/MigratedExplicit.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/test_rosbag
)
_generate_msg_nodejs(test_rosbag
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/Renamed5.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/test_rosbag
)
_generate_msg_nodejs(test_rosbag
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/Unmigrated.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/test_rosbag
)
_generate_msg_nodejs(test_rosbag
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/MigratedMixed.msg"
  "${MSG_I_FLAGS}"
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/MigratedImplicit.msg;/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/MigratedExplicit.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/test_rosbag
)
_generate_msg_nodejs(test_rosbag
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/Constants.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/test_rosbag
)
_generate_msg_nodejs(test_rosbag
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/SimpleMigrated.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/test_rosbag
)
_generate_msg_nodejs(test_rosbag
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/MigratedImplicit.msg"
  "${MSG_I_FLAGS}"
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/MigratedExplicit.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/test_rosbag
)
_generate_msg_nodejs(test_rosbag
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/SubUnmigrated.msg"
  "${MSG_I_FLAGS}"
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/Unmigrated.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/test_rosbag
)
_generate_msg_nodejs(test_rosbag
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/MigratedAddSub.msg"
  "${MSG_I_FLAGS}"
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/Simple.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/test_rosbag
)
_generate_msg_nodejs(test_rosbag
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/Converged.msg"
  "${MSG_I_FLAGS}"
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/SimpleMigrated.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/test_rosbag
)

### Generating Services

### Generating Module File
_generate_module_nodejs(test_rosbag
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/test_rosbag
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(test_rosbag_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(test_rosbag_generate_messages test_rosbag_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/Simple.msg" NAME_WE)
add_dependencies(test_rosbag_generate_messages_nodejs _test_rosbag_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/PartiallyMigrated.msg" NAME_WE)
add_dependencies(test_rosbag_generate_messages_nodejs _test_rosbag_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/MigratedExplicit.msg" NAME_WE)
add_dependencies(test_rosbag_generate_messages_nodejs _test_rosbag_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/Renamed5.msg" NAME_WE)
add_dependencies(test_rosbag_generate_messages_nodejs _test_rosbag_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/MigratedAddSub.msg" NAME_WE)
add_dependencies(test_rosbag_generate_messages_nodejs _test_rosbag_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/MigratedMixed.msg" NAME_WE)
add_dependencies(test_rosbag_generate_messages_nodejs _test_rosbag_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/Constants.msg" NAME_WE)
add_dependencies(test_rosbag_generate_messages_nodejs _test_rosbag_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/SimpleMigrated.msg" NAME_WE)
add_dependencies(test_rosbag_generate_messages_nodejs _test_rosbag_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/MigratedImplicit.msg" NAME_WE)
add_dependencies(test_rosbag_generate_messages_nodejs _test_rosbag_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/SubUnmigrated.msg" NAME_WE)
add_dependencies(test_rosbag_generate_messages_nodejs _test_rosbag_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/Unmigrated.msg" NAME_WE)
add_dependencies(test_rosbag_generate_messages_nodejs _test_rosbag_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/Converged.msg" NAME_WE)
add_dependencies(test_rosbag_generate_messages_nodejs _test_rosbag_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(test_rosbag_gennodejs)
add_dependencies(test_rosbag_gennodejs test_rosbag_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS test_rosbag_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(test_rosbag
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/Simple.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/test_rosbag
)
_generate_msg_py(test_rosbag
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/PartiallyMigrated.msg"
  "${MSG_I_FLAGS}"
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/MigratedExplicit.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/test_rosbag
)
_generate_msg_py(test_rosbag
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/MigratedExplicit.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/test_rosbag
)
_generate_msg_py(test_rosbag
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/Renamed5.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/test_rosbag
)
_generate_msg_py(test_rosbag
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/Unmigrated.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/test_rosbag
)
_generate_msg_py(test_rosbag
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/MigratedMixed.msg"
  "${MSG_I_FLAGS}"
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/MigratedImplicit.msg;/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/MigratedExplicit.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/test_rosbag
)
_generate_msg_py(test_rosbag
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/Constants.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/test_rosbag
)
_generate_msg_py(test_rosbag
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/SimpleMigrated.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/test_rosbag
)
_generate_msg_py(test_rosbag
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/MigratedImplicit.msg"
  "${MSG_I_FLAGS}"
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/MigratedExplicit.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/test_rosbag
)
_generate_msg_py(test_rosbag
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/SubUnmigrated.msg"
  "${MSG_I_FLAGS}"
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/Unmigrated.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/test_rosbag
)
_generate_msg_py(test_rosbag
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/MigratedAddSub.msg"
  "${MSG_I_FLAGS}"
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/Simple.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/test_rosbag
)
_generate_msg_py(test_rosbag
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/Converged.msg"
  "${MSG_I_FLAGS}"
  "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/SimpleMigrated.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/test_rosbag
)

### Generating Services

### Generating Module File
_generate_module_py(test_rosbag
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/test_rosbag
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(test_rosbag_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(test_rosbag_generate_messages test_rosbag_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/Simple.msg" NAME_WE)
add_dependencies(test_rosbag_generate_messages_py _test_rosbag_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/PartiallyMigrated.msg" NAME_WE)
add_dependencies(test_rosbag_generate_messages_py _test_rosbag_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/MigratedExplicit.msg" NAME_WE)
add_dependencies(test_rosbag_generate_messages_py _test_rosbag_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/Renamed5.msg" NAME_WE)
add_dependencies(test_rosbag_generate_messages_py _test_rosbag_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/MigratedAddSub.msg" NAME_WE)
add_dependencies(test_rosbag_generate_messages_py _test_rosbag_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/MigratedMixed.msg" NAME_WE)
add_dependencies(test_rosbag_generate_messages_py _test_rosbag_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/Constants.msg" NAME_WE)
add_dependencies(test_rosbag_generate_messages_py _test_rosbag_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/SimpleMigrated.msg" NAME_WE)
add_dependencies(test_rosbag_generate_messages_py _test_rosbag_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/MigratedImplicit.msg" NAME_WE)
add_dependencies(test_rosbag_generate_messages_py _test_rosbag_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/SubUnmigrated.msg" NAME_WE)
add_dependencies(test_rosbag_generate_messages_py _test_rosbag_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/Unmigrated.msg" NAME_WE)
add_dependencies(test_rosbag_generate_messages_py _test_rosbag_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ash/gripper_ws/src/motionPlanning/ros_comm-melodic-devel/test/test_rosbag/bag_migration_tests/msg_current/Converged.msg" NAME_WE)
add_dependencies(test_rosbag_generate_messages_py _test_rosbag_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(test_rosbag_genpy)
add_dependencies(test_rosbag_genpy test_rosbag_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS test_rosbag_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/test_rosbag)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/test_rosbag
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET rosgraph_msgs_generate_messages_cpp)
  add_dependencies(test_rosbag_generate_messages_cpp rosgraph_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(test_rosbag_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/test_rosbag)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/test_rosbag
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET rosgraph_msgs_generate_messages_eus)
  add_dependencies(test_rosbag_generate_messages_eus rosgraph_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(test_rosbag_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/test_rosbag)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/test_rosbag
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET rosgraph_msgs_generate_messages_lisp)
  add_dependencies(test_rosbag_generate_messages_lisp rosgraph_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(test_rosbag_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/test_rosbag)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/test_rosbag
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET rosgraph_msgs_generate_messages_nodejs)
  add_dependencies(test_rosbag_generate_messages_nodejs rosgraph_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(test_rosbag_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/test_rosbag)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/test_rosbag\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/test_rosbag
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET rosgraph_msgs_generate_messages_py)
  add_dependencies(test_rosbag_generate_messages_py rosgraph_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(test_rosbag_generate_messages_py std_msgs_generate_messages_py)
endif()
