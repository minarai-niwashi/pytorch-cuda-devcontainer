FROM ubuntu:24.04

ENV LANG=C.UTF-8
ENV LC_ALL=C.UTF-8

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install --no-install-recommends -y \
    python3.12=3.12.3-1ubuntu0.10 \
    curl=8.5.0-2ubuntu10.6 \
    git=1:2.43.0-1ubuntu7.3 \
    sudo=1.9.15p5-3ubuntu5.24.04.1 \
    ca-certificates=20240203 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN update-ca-certificates
RUN ln -fs python3.12 /usr/bin/python3

ARG USERNAME=ubuntu

RUN echo ${USERNAME} ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME \
    && chmod 0440 /etc/sudoers.d/$USERNAME

USER $USERNAME

ENV PATH=/home/$USERNAME/.local/bin:$PATH
