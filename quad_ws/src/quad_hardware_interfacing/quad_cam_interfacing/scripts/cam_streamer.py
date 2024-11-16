#!/usr/bin/env python3

import rospy
from picamera2 import Picamera2
import cv2
import numpy as np

LOCAL_MACHINE_IP = "192.168.16.52"

def start_camera_stream():
    # Initialize ROS node
    rospy.init_node('picamera2_streamer', anonymous=True)

    # Initialize Picamera2
    camera = Picamera2()
    config = camera.create_preview_configuration(main={"size": (640, 480)})
    camera.configure(config)
    camera.start()

    # Set up GStreamer pipeline for streaming over UDP
    out = cv2.VideoWriter(
        f'appsrc ! videoconvert ! x264enc tune=zerolatency bitrate=500 speed-preset=ultrafast ! rtph264pay ! udpsink host={LOCAL_MACHINE_IP} port=5000',
        cv2.CAP_GSTREAMER,
        0,
        20.0,
        (640, 480)
    )

    rospy.loginfo("Starting Picamera2 network stream...")

    while not rospy.is_shutdown():
        # Capture frame-by-frame
        frame = camera.capture_array()
        
        # Stream the frame
        out.write(frame)

    # Clean up
    out.release()
    camera.stop()
    rospy.loginfo("Camera stream stopped.")

if __name__ == '__main__':
    try:
        start_camera_stream()
    except rospy.ROSInterruptException:
        pass

