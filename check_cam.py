#!/usr/bin/env python3
# author: Souvik Biswas

# For checking whether OAK-D is available

import cv2
import depthai as dai

print("Start")

# Create pipeline
pipeline = dai.Pipeline()

# Name of primary OAK-D cam
oakCamName = "CameraBoardSocket.RGB"

# Boolean to check the camera status
isAvailable = False

# Check if oak is available
try:
    device = dai.Device(pipeline)
    cameras = device.getConnectedCameras()
    for camera in cameras:
        if str(camera) == oakCamName:
            isAvailable = True
            break
except Exception:
    pass
finally:
    if isAvailable:
        print("Success")
    else:
        print("Failed")
