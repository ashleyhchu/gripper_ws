# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include;/usr/include".split(';') if "${prefix}/include;/usr/include" != "" else []
PROJECT_CATKIN_DEPENDS = "cpp_common;message_runtime;rosconsole;roscpp_serialization;roscpp_traits;rosgraph_msgs;rostime;std_msgs;xmlrpcpp".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lroscpp;-lpthread;/usr/lib/x86_64-linux-gnu/libboost_chrono.so;/usr/lib/x86_64-linux-gnu/libboost_filesystem.so;/usr/lib/x86_64-linux-gnu/libboost_system.so".split(';') if "-lroscpp;-lpthread;/usr/lib/x86_64-linux-gnu/libboost_chrono.so;/usr/lib/x86_64-linux-gnu/libboost_filesystem.so;/usr/lib/x86_64-linux-gnu/libboost_system.so" != "" else []
PROJECT_NAME = "roscpp"
PROJECT_SPACE_DIR = "/home/ash/gripper_ws/install"
PROJECT_VERSION = "1.14.11"
