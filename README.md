# OAK-D Server

This helps in running the Blazepose OAK-D script in background (so that terminal control is not lost). Created to be used on a remote device (eg, Raspberry Pi) controlled with the help of SSH from a mobile device. This allows full access to the script from a mobile app.

The script is being used with [Sofia](https://github.com/sbis04/yoga-instructor) app.

## Working model

The main hardware components that we have used for building the setup for this project is as follows:

- OAK-D (OpenCV AI Kit)
- Raspberry Pi 2B
- Mobile device (Android API level 23 or higher)

An overview of our entire setup is given below:

![](images/Sofia_oak_overview.png)

- The **OAK-D** is connected via a USB cable to the Raspberry Pi device.
- The **Raspberry Pi** can be powered directly from the mobile (if it has a type C port available), otherwise it has to be connected to the power socket (using battery power is not ideal in this case).
- The Sofia **mobile app** communicates with the Raspberry Pi device via an SSH connection (it's a two-way communication).
- The mobile app (connected to a WiFi) and the Raspberry Pi (connected via ethernet or WiFi) should be connected to the same network.
- Various cloud services are utilized by the mobile app for database, storage, intent recognition for the voice assistant & video streaming (along with encoding and decoding of the media).

## Usage

You can use this script locally, follow the instructions below to get started.

* Clone using the following:

    ```sh
    git clone --recurse-submodules https://github.com/sbis04/yoga-instructor-oak-server.git
    ```

* Install the requirements:

    ```sh
    python3 OAKD_depthai_blazepose/depthai-python/examples/install_requirements.py

    python -m pip install -r OAKD_depthai_blazepose/requirements.txt
    ```

    > **TIP:** You can use a conda environment to install the requirements.

* Run the script using:

    ```sh
    ./oak_starter.sh <pose_name> <track_name>
    ```

    > Replace the angle brackets with their respective values, for example:
    > 
    > ```sh
    > ./oak_starter.sh mountain beginners
    > ```

    This command generates a `PID`, copy the process identifier to stop the script easily by passing to the `oak_dispose.sh` script.

* Stop the script using the following:

    ```sh
    ./oak_dispose.sh <PID>
    ```

    > Replace the **PID** with the one generated during the start of the script, for example:
    > 
    > ```sh
    > ./oak_dispose.sh 3386
    > ```

* Changeover the script (stop the previously running script and start a new one) using:

    ```sh
    ./oak_changeover.sh <PID> <pose_name> <track_name>
    ```

    > Replace the **PID** with the one generated during the start of the previous script, 
    > and pass the new pose name and the track name to start the new script
    > 
    > ```sh
    > ./oak_changeover.sh 3387 mountain beginners
    > ```

    This command generates a `PID`, copy the process identifier to stop the script easily by passing to the `oak_dispose.sh` script.

If you are using a `conda` environment in your device, you'll have to update the script (only `oak_starter.sh` & `oak_changeover.sh` needs to be modified) to **activate** the correct environment.

```sh
# Before running the python command
. ~/.zshrc # for macOS using zsh terminal
# . ~/bashrc # If using bash terminal
conda activate <env>

# python3 ....
```

## Submodules

There are two submodules which gets cloned when being used with the above command.

* [OAKD_depthai_blazepose](https://github.com/Soumi7/OAKD_depthai_blazepose) (author: [Soumi7](https://github.com/Soumi7), [sbis04](https://github.com/sbis04), [geaxgx](https://github.com/geaxgx))
* [depthai-python](https://github.com/luxonis/depthai-python) (author: [Luxonis LLC](https://github.com/luxonis))

## License

Copyright (c) 2021  Souvik Biswas

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.