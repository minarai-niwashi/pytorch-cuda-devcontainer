#!/bin/bash

export PATH=$HOME/.local/bin:$PATH
python3 -m pip --no-cache-dir install -r requirements-custom.txt
python3 -m pip --no-cache-dir install -r requirements.txt
pre-commit install
