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

echo_and_run cd "/home/huy/Autonomous-Landing-on-Moving-Platform/catkin_ws/src/spawn_robot_tools/spawn_robot_tools_pkg"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/huy/Autonomous-Landing-on-Moving-Platform/catkin_ws/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/huy/Autonomous-Landing-on-Moving-Platform/catkin_ws/install/lib/python2.7/dist-packages:/home/huy/Autonomous-Landing-on-Moving-Platform/catkin_ws/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/huy/Autonomous-Landing-on-Moving-Platform/catkin_ws/build" \
    "/usr/bin/python2" \
    "/home/huy/Autonomous-Landing-on-Moving-Platform/catkin_ws/src/spawn_robot_tools/spawn_robot_tools_pkg/setup.py" \
     \
    build --build-base "/home/huy/Autonomous-Landing-on-Moving-Platform/catkin_ws/build/spawn_robot_tools/spawn_robot_tools_pkg" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/huy/Autonomous-Landing-on-Moving-Platform/catkin_ws/install" --install-scripts="/home/huy/Autonomous-Landing-on-Moving-Platform/catkin_ws/install/bin"
