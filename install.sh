#!/bin/bash
git clone --recurse-submodules https://github.com/Soumi7/OAKD_depthai_blazepose.git
cd OAKD_depthai_blazepose

# git clone https://github.com/Soumi7/OAKD_depthai_blazepose.git

# cd OAKD_depthai_blazepose

# rm -r depthai-python

# git clone https://github.com/luxonis/depthai-python.git

cd depthai-python

git fetch --all
git checkout origin/develop
python3 ./examples/install_requirements.py

cd ../..
