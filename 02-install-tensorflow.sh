#!/bin/bash

yes | sudo python3.5 -m pip install --user -U absl-py
sudo python3.5 -m pip uninstall --yes termcolor
yes | sudo python3.5 -m pip install --user termcolor==1.1.0
sudo python3.5 -m pip uninstall --yes wrapt
yes | sudo python3.5 -m pip install --user wrapt==1.11.1
sudo python3.5 -m pip uninstall --yes numpy
yes | sudo python3.5 -m pip install --user numpy==1.14.5
sudo python3.5 -m pip uninstall --yes six
yes | sudo python3.5 -m pip install --user six==1.10.0
sudo python3.5 -m pip uninstall --yes wheel
yes | sudo python3.5 -m pip install --user wheel==0.26

if [ ! -f tensorflow-1.14.0-cp35-none-linux_aarch64.whl ]; then
	cat tensorflow/tensorflow-1.14.0-cp35-none-linux_aarch64.whl.tar.gz* | tar xz
fi
sudo python3.5 -m pip install --user tensorflow-1.14.0-cp35-none-linux_aarch64.whl
