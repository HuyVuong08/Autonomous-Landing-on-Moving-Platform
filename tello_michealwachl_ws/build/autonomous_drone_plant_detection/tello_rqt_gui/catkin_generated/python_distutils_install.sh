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

echo_and_run cd "/home/tello1804/tello_michealwachl_ws/src/autonomous_drone_plant_detection/tello_rqt_gui"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/tello1804/tello_michealwachl_ws/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/tello1804/tello_michealwachl_ws/install/lib/python2.7/dist-packages:/home/tello1804/tello_michealwachl_ws/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/tello1804/tello_michealwachl_ws/build" \
    "/usr/bin/python2" \
    "/home/tello1804/tello_michealwachl_ws/src/autonomous_drone_plant_detection/tello_rqt_gui/setup.py" \
     \
    build --build-base "/home/tello1804/tello_michealwachl_ws/build/autonomous_drone_plant_detection/tello_rqt_gui" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/tello1804/tello_michealwachl_ws/install" --install-scripts="/home/tello1804/tello_michealwachl_ws/install/bin"
