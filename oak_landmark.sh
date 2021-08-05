#!/bin/bash
# -----------------------------------------
# Execute with:
# ./oak_landmark.sh
# -----------------------------------------

# Navigate to the correct directory
cd ~/yoga-instructor-oak-server/OAKD_depthai_blazepose

# Run the script
python3 -W ignore yoga_pose_landmarks.py & echo "PID: $!"
