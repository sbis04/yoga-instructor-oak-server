#!/bin/bash

# Navigate to the correct directory
cd ~/depthai_blazepose
# Run the script
python3 -W ignore BlazeposeDepthai.py --pose & echo "PID: $!"
