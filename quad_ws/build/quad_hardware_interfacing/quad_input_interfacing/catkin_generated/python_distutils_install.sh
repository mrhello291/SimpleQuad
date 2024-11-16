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

echo_and_run cd "/home/mrhello/SimpleQuad/quad_ws/src/quad_hardware_interfacing/quad_input_interfacing"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/mrhello/SimpleQuad/quad_ws/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/mrhello/SimpleQuad/quad_ws/install/lib/python3/dist-packages:/home/mrhello/SimpleQuad/quad_ws/build/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/mrhello/SimpleQuad/quad_ws/build" \
    "/usr/bin/python3" \
    "/home/mrhello/SimpleQuad/quad_ws/src/quad_hardware_interfacing/quad_input_interfacing/setup.py" \
     \
    build --build-base "/home/mrhello/SimpleQuad/quad_ws/build/quad_hardware_interfacing/quad_input_interfacing" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/mrhello/SimpleQuad/quad_ws/install" --install-scripts="/home/mrhello/SimpleQuad/quad_ws/install/bin"
