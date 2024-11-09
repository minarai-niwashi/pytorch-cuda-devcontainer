# pytorch-cuda-devcontainer
devcontainerを使ったPyTorch-CUDA環境

## Environment

- **Python Version**: `3.11`
- **Base Image**: `mcr.microsoft.com/devcontainers/python:3.11-bullseye`

## 事前準備
- ホストOSにNVIDIA Driver、CUDA Toolkitをインストールする。
- ホストOSに[NVIDIA Container Toolkit](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/latest/install-guide.html)をインストールする。

## 検証環境
- Ubuntu 22.04 (WSL2)
- NVIDIA GeForce RTX 3060 Ti

| | バージョン |
| --- | :---: |
| NVIDIA Driver | 536.23 |
| CUDA Toolkit | 11.1 |
