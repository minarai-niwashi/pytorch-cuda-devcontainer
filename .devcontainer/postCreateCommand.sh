#!/bin/bash

apt-get update
apt-get install -y python3-pip curl git sudo

python3 -m pip --no-cache-dir install -r requirements-custom.txt
python3 -m pip --no-cache-dir install -r requirements.txt
