# pytorch-cuda-devcontainer
devcontainerを使ったPyTorch-CUDA環境

## Environment

- **Python Version**: `3.10`
- **Base Image**: `nvidia/cuda:12.1.1-base-ubuntu22.04`

## 事前準備
- ホストOSに[NVIDIA Driver](https://www.nvidia.com/en-us/drivers/)、[CUDA Toolkit](https://developer.nvidia.com/cuda-toolkit)をインストールする。
- ホストOSに[NVIDIA Container Toolkit](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/latest/install-guide.html)をインストールする。

## 検証環境
- Ubuntu 22.04 (WSL2)
- NVIDIA GeForce RTX 3060 Ti

| item          | version |
|---------------|:-------:|
| NVIDIA Driver | 536.23  |
| CUDA Toolkit  |  11.1   |
