# Stable Diffusion Web UI Container Repository

This repository is a Container for Stable Diffusion Web UI.

## Overview

| Type | Summary |
| --- | --- |
| Base image and tags | nvidia/cuda:12.5.0-runtime-ubuntu22.04 |
| Target platform | linux/x64, linux/arm64 |
| Container registry's URL | https://hub.docker.com/r/ryotafunaki/stable-diffusion-webui/ |

## Requirements

- NVIDIA CUDA on WSL2  
  [Enable NVIDIA CUDA on WSL](https://learn.microsoft.com/ja-jp/windows/ai/directml/gpu-cuda-in-wsl)

## How to use

1.  Get docker-compose.yml from the GitHub repository.  
    https://github.com/ryotafunaki/container-stable-diffusion-webui/
1.  Boot up the container.
    ```bash
    docker compose up -d
    ```
    Wait a few moments for the startup to complete.
1.  Access the Web UI.
    ```bash
    http://localhost:7860
    ```
    See [Stable Diffusion Web UI](https://github.com/AUTOMATIC1111/stable-diffusion-webui).
1.  Stop and dispose the container.
    ```bash
    docker compose down
    ```

> [!IMPORTANT]  
> This image is a personal container.  
> You can take a look at the Dockerfile and use it if you think it suits your use.
