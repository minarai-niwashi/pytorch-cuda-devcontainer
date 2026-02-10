FROM ubuntu:24.04

ENV LANG=C.UTF-8
ENV LC_ALL=C.UTF-8

RUN apt-get update \
    && apt-get install --no-install-recommends -y debconf \
    && dpkg-reconfigure debconf --frontend=noninteractive \
    && apt-get install --no-install-recommends -y python3.12 curl git sudo ca-certificates \
    && update-ca-certificates \
    && ln -fs python3.12 /usr/bin/python3 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

ARG USERNAME=ubuntu

RUN echo ${USERNAME} ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME \
    && chmod 0440 /etc/sudoers.d/$USERNAME

USER $USERNAME

ENV PATH=/home/$USERNAME/.local/bin:$PATH
