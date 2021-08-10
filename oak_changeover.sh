#!/bin/bash
# -----------------------------------------
# Execute with:
# ./oak_starter.sh <pose_name> <track_name>
#
# @example:
# ./oak_starter.sh mountain beginners
# -----------------------------------------

# Get process id
pid=$1

# Stop the previously running script
kill -9 $pid

echo "KILL: $pid"

# Navigate to the correct directory
cd ~/yoga-instructor-oak-server/OAKD_depthai_blazepose

# Run the new script
# python3 -W ignore BlazeposeDepthai.py --pose $1 --track $2 & echo "PID: $!"
python3 -W ignore yoga_pose_recognizer.py --expected_pose $2 --track $3 & echo "PID: $!"
