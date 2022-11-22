#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/ash/gripper_ws/src/motionPlanning/executive_smach/smach_ros"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/ash/gripper_ws/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/ash/gripper_ws/install/lib/python2.7/dist-packages:/home/ash/gripper_ws/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/ash/gripper_ws/build" \
    "/usr/bin/python2" \
    "/home/ash/gripper_ws/src/motionPlanning/executive_smach/smach_ros/setup.py" \
    egg_info --egg-base /home/ash/gripper_ws/build/motionPlanning/executive_smach/smach_ros \
    build --build-base "/home/ash/gripper_ws/build/motionPlanning/executive_smach/smach_ros" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/ash/gripper_ws/install" --install-scripts="/home/ash/gripper_ws/install/bin"
