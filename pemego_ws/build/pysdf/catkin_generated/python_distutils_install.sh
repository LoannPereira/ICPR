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

echo_and_run cd "/home/loann/Bureau/ICPR/TP4/ICPR/pemego_ws/src/pysdf"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/loann/Bureau/ICPR/TP4/ICPR/pemego_ws/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/loann/Bureau/ICPR/TP4/ICPR/pemego_ws/install/lib/python2.7/dist-packages:/home/loann/Bureau/ICPR/TP4/ICPR/pemego_ws/build/pysdf/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/loann/Bureau/ICPR/TP4/ICPR/pemego_ws/build/pysdf" \
    "/usr/bin/python2" \
    "/home/loann/Bureau/ICPR/TP4/ICPR/pemego_ws/src/pysdf/setup.py" \
     \
    build --build-base "/home/loann/Bureau/ICPR/TP4/ICPR/pemego_ws/build/pysdf" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/loann/Bureau/ICPR/TP4/ICPR/pemego_ws/install" --install-scripts="/home/loann/Bureau/ICPR/TP4/ICPR/pemego_ws/install/bin"
