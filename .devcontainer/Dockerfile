FROM nvidia/cuda:11.7.1-base-ubuntu22.04

RUN apt-get update && apt-get install -y python3-pip
RUN apt-get install -y curl git sudo

COPY requirements-custom.txt requirements.txt /tmp/pip-tmp/
RUN python3 -m pip install -r /tmp/pip-tmp/requirements-custom.txt
RUN python3 -m pip install -r /tmp/pip-tmp/requirements.txt \
    && rm -rf /tmp/pip-tmp
