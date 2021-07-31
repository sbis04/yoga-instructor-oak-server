#!/bin/bash
# gcl --recurse-submodules https://github.com/Soumi7/OAKD_depthai_blazepose.git
# cd OAKD_depthai_blazepose

gcl https://github.com/Soumi7/OAKD_depthai_blazepose.git

cd OAKD_depthai_blazepose

rm -r depthai-python

gcl https://github.com/luxonis/depthai-python.git

cd depthai-python

git fetch --all
git checkout origin/develop
python3 ./examples/install_requirements.py
