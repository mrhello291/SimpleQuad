import time
import board
from ahrs.filters import Madgwick
from adafruit_lsm6ds.ism330dhcx import ISM330DHCX
from scipy.spatial.transform import Rotation as R
import numpy as np
import MMC5983MA

i2c = board.I2C()  # uses board.SCL and board.SDA
sox = ISM330DHCX(i2c, address=0x6b)
mag = MMC5983MA.MMC5983MA() # This has 0x30 address by default for the magnetometer

madgwick = Madgwick()

xoff = []
yoff = []
zoff = []

accelOffs = [-0.35026, 0.15761, 0.10564]
# accelOffs = [-0.20026, 0.15761, 0.10564]
# accelOffs = [-0.29026, 0.17461, 0.09564]

# Variables to store orientation
quaternion = np.array([1.0, 0.0, 0.0, 0.0])  # Initial quaternion

while True:
    
    
    # Read accelerometer data
    acc = np.array(sox.acceleration) - accelOffs  # [Ax, Ay, Az]
    # xoff.append(acc[0])
    # yoff.append(acc[1])
    # zoff.append(acc[2])
    # print(f'{np.mean(xoff) - 0}, {np.mean(yoff) - 0}, {np.mean(zoff) - 9.81}')

    # Read gyroscope data (convert to rad/s)
    gyro = np.radians(np.array(sox.gyro))  # [Gx, Gy, Gz] in rad/s
    
    # xoff.append(gyro[0])
    # yoff.append(gyro[1])
    # zoff.append(gyro[2])
    # print(f'{np.mean(xoff) - 0}, {np.mean(yoff) - 0}, {np.mean(zoff) - 9.81}')
    
    # Read magnetometer data
    mag_data = np.array(mag.magnetic18b_Gauss)  # [Mx, My, Mz]
    
    # xoff.append(acc[0])
    # yoff.append(acc[1])
    # zoff.append(acc[2])
    #print(f'{np.mean(xoff) - 0}, {np.mean(yoff) - 0}, {np.mean(zoff) - 9.81}')
    
    # Update the Madgwick filter
    quaternion = madgwick.updateMARG(quaternion, gyr=gyro, acc=acc, mag=mag_data)

    # Convert quaternion to Euler angles (yaw, pitch, roll)
    r = R.from_quat(quaternion)  # Convert to Scipy rotation object
    yaw, pitch, roll = r.as_euler('zyx', degrees=True)  # Extract in degrees
    
    print(f'Acceleration: X: {acc[0]}, Y: {acc[1]}, Z: {acc[2]} m/s^2')
    print(f'Gyro: X: {gyro[0]}, Y: {gyro[1]}, Z: {gyro[2]} m/s^2')
    print(f'Magnetometer: X: {mag_data[0]}, Y: {mag_data[1]}, Z: {mag_data[2]} m/s^2')
    print("")

    # Print results
    print(f"Yaw: {yaw:.2f}°, Pitch: {pitch:.2f}°, Roll: {roll:.2f}°")

    time.sleep(0.1)
