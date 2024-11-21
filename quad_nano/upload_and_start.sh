#!/bin/bash
BOARD="arduino:avr:nano"
SKETCH_PATH="quad_nano.ino"
PORT="/dev/ttyUSB0"

# Compile the sketch
arduino-cli compile --fqbn $BOARD $SKETCH_PATH

# Upload the sketch
arduino-cli upload --fqbn $BOARD -p $PORT $SKETCH_PATH

# Start the ROS serial bridge
rosrun rosserial_python serial_node.py $PORT

