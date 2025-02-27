# pytorch-cuda-devcontainer

This repository provides a development environment where you can run GPU-enabled PyTorch inside a devcontainer on WSL2.

## Environment

- **Python Version**: `3.12`
- **Base Image**: `nvidia/cuda:12.4.1-base-ubuntu22.04`

## Preparation

- Enable NVIDIA CUDA on WSL
    - [English](https://learn.microsoft.com/en-us/windows/ai/directml/gpu-cuda-in-wsl)
    - [Japanese](https://learn.microsoft.com/ja-jp/windows/ai/directml/gpu-cuda-in-wsl)
- [NVIDIA Container Toolkit](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/latest/install-guide.html)

## Tested Environment

- Ubuntu 22.04 (WSL2)
- NVIDIA GeForce RTX 3060 Ti

| item          | version |
|---------------|:-------:|
| NVIDIA Driver | 536.23  |
| CUDA Toolkit  |  11.1   |
