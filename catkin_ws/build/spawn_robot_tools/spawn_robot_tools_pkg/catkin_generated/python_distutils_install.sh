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

echo_and_run cd "/home/datrg/Autonomous-Landing-on-Moving-Platform/catkin_ws/src/spawn_robot_tools/spawn_robot_tools_pkg"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/datrg/Autonomous-Landing-on-Moving-Platform/catkin_ws/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/datrg/Autonomous-Landing-on-Moving-Platform/catkin_ws/install/lib/python3/dist-packages:/home/datrg/Autonomous-Landing-on-Moving-Platform/catkin_ws/build/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/datrg/Autonomous-Landing-on-Moving-Platform/catkin_ws/build" \
    "/usr/bin/python3" \
    "/home/datrg/Autonomous-Landing-on-Moving-Platform/catkin_ws/src/spawn_robot_tools/spawn_robot_tools_pkg/setup.py" \
     \
    build --build-base "/home/datrg/Autonomous-Landing-on-Moving-Platform/catkin_ws/build/spawn_robot_tools/spawn_robot_tools_pkg" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/datrg/Autonomous-Landing-on-Moving-Platform/catkin_ws/install" --install-scripts="/home/datrg/Autonomous-Landing-on-Moving-Platform/catkin_ws/install/bin"
