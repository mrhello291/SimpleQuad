#!/usr/bin/env python3
import rospy
import numpy as np
import time
import board
import math as m
from ahrs.filters import Madgwick
from adafruit_lsm6ds.ism330dhcx import ISM330DHCX
from scipy.spatial.transform import Rotation as R
import MMC5983MA

class IMU:
    def __init__(self):
        self.i2c = board.I2C()  # uses board.SCL and board.SDA
        self.sensor = ISM330DHCX(self.i2c, address=0x6b)
        self.magSensor = MMC5983MA.MMC5983MA() # This has 0x30 address by default for the magnetometer
        self.madgwick = Madgwick()
        self.accelOffs = [-0.35026, 0.15761, 0.10564]
        self.last_euler = np.array([ 0, 0, 0])
        self.quaternion = np.array([1.0, 0.0, 0.0, 0.0])
        self.start_time = time.time()

    def read_orientation(self):
        """Reads quaternion measurements from the IMU until . Returns the last read Euler angle.
        
        Parameters
        ----------
        None
        
        Returns
        -------
        np array (3,)
            If there was quaternion data to read on the serial port returns the quaternion as a numpy array, otherwise returns the last read quaternion.
        """
        try:
            acc = np.array(self.sensor.acceleration) - self.accelOffs  # [Ax, Ay, Az]
            gyro = np.radians(np.array(self.sensor.gyro))  # [Gx, Gy, Gz] in rad/s
            mag_data = np.array(self.magSensor.magnetic18b_Gauss)  # [Mx, My, Mz]
            self.quaternion = self.madgwick.updateMARG(self.quaternion, gyr=gyro, acc=acc, mag=mag_data)
            # Convert quaternion to Euler angles (yaw, pitch, roll)
            r = R.from_quat(self.quaternion)  # Convert to Scipy rotation object
            yaw, pitch, roll = r.as_euler('zyx', degrees=True)  # Extract in degrees
            yaw = m.radians(yaw) - 0.01 
            pitch = m.radians(-pitch) + 0.09
            roll = m.radians(roll - 60) - 1.77 # fixed offset to account for the IMU being off by 60 degrees
            self.last_euler = [yaw,pitch,roll]
        except:
            self.last_euler = np.array([ 0, 0, 0])
        return self.last_euler
