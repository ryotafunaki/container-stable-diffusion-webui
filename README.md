# Stable Diffusion Web UI Container Repository

This repository is a Container for Stable Diffusion Web UI.

## Overview

| Type | Summary |
| --- | --- |
| Base image and tags | nvidia/cuda:12.4.1-runtime-ubuntu22.04 |
| Target platform | linux/x64, linux/arm64 |
| Container registry's URL | https://hub.docker.com/r/ryotafunaki/container-stable-diffusion-webui/ |

## Requirements

- Docker
- NVIDIA CUDA on WSL2  
  [Enable NVIDIA CUDA on WSL](https://learn.microsoft.com/ja-jp/windows/ai/directml/gpu-cuda-in-wsl)

## How to use

1. Boot up the container.
    ```bash
    docker compose up -d
    ```
1. Access the Web UI.
1. Add models and run inference.
   ```bash
    docker exec -it <container name> bash
    ...
    ```
1. Stop the container.
    ```bash
    docker compose down
    ```

> [!IMPORTANT]  
> This image is a personal container.  
> You can take a look at the Dockerfile and use it if you think it suits your use.
