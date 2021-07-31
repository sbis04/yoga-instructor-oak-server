#!/bin/bash
# -----------------------------------------
# Execute with:
# ./oak_starter.sh <pose_name> <track_name>
#
# @example:
# ./oak_starter.sh triangle1 beginners
# -----------------------------------------

# Navigate to the correct directory
cd ~/yoga-instructor-oak-server/blazepose-oak

# Run the script
python3 -W ignore BlazeposeDepthai.py --pose $1 --track $2 & echo "PID: $!"
