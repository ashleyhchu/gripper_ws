# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "droidspeak: 1 messages, 1 services")

set(MSG_I_FLAGS "-Idroidspeak:/home/ash/gripper_ws/src/dataAnalysis/droidspeak/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(droidspeak_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ash/gripper_ws/src/dataAnalysis/droidspeak/msg/DroidChat.msg" NAME_WE)
add_custom_target(_droidspeak_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "droidspeak" "/home/ash/gripper_ws/src/dataAnalysis/droidspeak/msg/DroidChat.msg" ""
)

get_filename_component(_filename "/home/ash/gripper_ws/src/dataAnalysis/droidspeak/srv/DroidEmotion.srv" NAME_WE)
add_custom_target(_droidspeak_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "droidspeak" "/home/ash/gripper_ws/src/dataAnalysis/droidspeak/srv/DroidEmotion.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(droidspeak
  "/home/ash/gripper_ws/src/dataAnalysis/droidspeak/msg/DroidChat.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/droidspeak
)

### Generating Services
_generate_srv_cpp(droidspeak
  "/home/ash/gripper_ws/src/dataAnalysis/droidspeak/srv/DroidEmotion.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/droidspeak
)

### Generating Module File
_generate_module_cpp(droidspeak
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/droidspeak
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(droidspeak_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(droidspeak_generate_messages droidspeak_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ash/gripper_ws/src/dataAnalysis/droidspeak/msg/DroidChat.msg" NAME_WE)
add_dependencies(droidspeak_generate_messages_cpp _droidspeak_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ash/gripper_ws/src/dataAnalysis/droidspeak/srv/DroidEmotion.srv" NAME_WE)
add_dependencies(droidspeak_generate_messages_cpp _droidspeak_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(droidspeak_gencpp)
add_dependencies(droidspeak_gencpp droidspeak_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS droidspeak_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(droidspeak
  "/home/ash/gripper_ws/src/dataAnalysis/droidspeak/msg/DroidChat.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/droidspeak
)

### Generating Services
_generate_srv_eus(droidspeak
  "/home/ash/gripper_ws/src/dataAnalysis/droidspeak/srv/DroidEmotion.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/droidspeak
)

### Generating Module File
_generate_module_eus(droidspeak
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/droidspeak
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(droidspeak_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(droidspeak_generate_messages droidspeak_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ash/gripper_ws/src/dataAnalysis/droidspeak/msg/DroidChat.msg" NAME_WE)
add_dependencies(droidspeak_generate_messages_eus _droidspeak_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ash/gripper_ws/src/dataAnalysis/droidspeak/srv/DroidEmotion.srv" NAME_WE)
add_dependencies(droidspeak_generate_messages_eus _droidspeak_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(droidspeak_geneus)
add_dependencies(droidspeak_geneus droidspeak_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS droidspeak_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(droidspeak
  "/home/ash/gripper_ws/src/dataAnalysis/droidspeak/msg/DroidChat.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/droidspeak
)

### Generating Services
_generate_srv_lisp(droidspeak
  "/home/ash/gripper_ws/src/dataAnalysis/droidspeak/srv/DroidEmotion.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/droidspeak
)

### Generating Module File
_generate_module_lisp(droidspeak
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/droidspeak
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(droidspeak_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(droidspeak_generate_messages droidspeak_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ash/gripper_ws/src/dataAnalysis/droidspeak/msg/DroidChat.msg" NAME_WE)
add_dependencies(droidspeak_generate_messages_lisp _droidspeak_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ash/gripper_ws/src/dataAnalysis/droidspeak/srv/DroidEmotion.srv" NAME_WE)
add_dependencies(droidspeak_generate_messages_lisp _droidspeak_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(droidspeak_genlisp)
add_dependencies(droidspeak_genlisp droidspeak_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS droidspeak_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(droidspeak
  "/home/ash/gripper_ws/src/dataAnalysis/droidspeak/msg/DroidChat.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/droidspeak
)

### Generating Services
_generate_srv_nodejs(droidspeak
  "/home/ash/gripper_ws/src/dataAnalysis/droidspeak/srv/DroidEmotion.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/droidspeak
)

### Generating Module File
_generate_module_nodejs(droidspeak
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/droidspeak
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(droidspeak_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(droidspeak_generate_messages droidspeak_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ash/gripper_ws/src/dataAnalysis/droidspeak/msg/DroidChat.msg" NAME_WE)
add_dependencies(droidspeak_generate_messages_nodejs _droidspeak_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ash/gripper_ws/src/dataAnalysis/droidspeak/srv/DroidEmotion.srv" NAME_WE)
add_dependencies(droidspeak_generate_messages_nodejs _droidspeak_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(droidspeak_gennodejs)
add_dependencies(droidspeak_gennodejs droidspeak_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS droidspeak_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(droidspeak
  "/home/ash/gripper_ws/src/dataAnalysis/droidspeak/msg/DroidChat.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/droidspeak
)

### Generating Services
_generate_srv_py(droidspeak
  "/home/ash/gripper_ws/src/dataAnalysis/droidspeak/srv/DroidEmotion.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/droidspeak
)

### Generating Module File
_generate_module_py(droidspeak
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/droidspeak
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(droidspeak_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(droidspeak_generate_messages droidspeak_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ash/gripper_ws/src/dataAnalysis/droidspeak/msg/DroidChat.msg" NAME_WE)
add_dependencies(droidspeak_generate_messages_py _droidspeak_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ash/gripper_ws/src/dataAnalysis/droidspeak/srv/DroidEmotion.srv" NAME_WE)
add_dependencies(droidspeak_generate_messages_py _droidspeak_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(droidspeak_genpy)
add_dependencies(droidspeak_genpy droidspeak_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS droidspeak_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/droidspeak)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/droidspeak
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(droidspeak_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/droidspeak)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/droidspeak
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(droidspeak_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/droidspeak)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/droidspeak
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(droidspeak_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/droidspeak)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/droidspeak
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(droidspeak_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/droidspeak)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/droidspeak\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/droidspeak
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(droidspeak_generate_messages_py std_msgs_generate_messages_py)
endif()
