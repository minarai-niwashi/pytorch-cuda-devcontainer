#!/bin/bash

python3 -m pip install --upgrade pip
python3 -m pip --no-cache-dir install .[dev]
pre-commit install
