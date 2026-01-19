FROM nvidia/cuda:12.4.1-base-ubuntu22.04

RUN apt-get update && apt-get install --no-install-recommends -y locales=2.35-0ubuntu3.11 \
    && locale-gen en_US.UTF-8 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN apt-get update && apt-get install --no-install-recommends -y software-properties-common=0.99.22.9 \
    && add-apt-repository ppa:deadsnakes/ppa \
    && apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install --no-install-recommends -y \
    python3.12=3.12.12-1+jammy1 \
    curl=7.81.0-1ubuntu1.21 \
    git=1:2.34.1-1ubuntu1.15 \
    sudo=1.9.9-1ubuntu2.5 \
    openssh-client=1:8.9p1-3ubuntu0.13 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN ln -fs python3.12 /usr/bin/python3

ARG USERNAME=vscode
ARG USER_UID=1000
ARG USER_GID=$USER_UID

RUN groupadd --gid ${USER_GID} ${USERNAME} \
    && useradd --uid ${USER_UID} --gid ${USER_GID} -m ${USERNAME} \
    && echo ${USERNAME} ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME \
    && chmod 0440 /etc/sudoers.d/$USERNAME

USER $USERNAME

ENV PATH=/home/$USERNAME/.local/bin:$PATH
