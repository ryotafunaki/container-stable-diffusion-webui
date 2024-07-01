# Copyright (c) 2024 RFull Development
# This source code is managed under the MIT license. See LICENSE in the project root.
FROM nvidia/cuda:12.4.1-runtime-ubuntu22.04

# Install dependencies
RUN apt update && \
    apt install -y sudo google-perftools wget git python3 python3-venv libgl1 libglib2.0-0

# Create a non-root user
ARG USER_NAME=developer
ARG USER_HOME=/home/${USER_NAME}
RUN useradd -m ${USER_NAME} -s /bin/bash
RUN echo "$USER_NAME ALL=(ALL:ALL) NOPASSWD:ALL" > /etc/sudoers.d/${USER_NAME}

# Clean up
RUN sudo apt clean && \
    sudo rm -rf /var/lib/apt/lists/*

# Switch to the non-root user
USER ${USER_NAME}
WORKDIR ${USER_HOME}

# Run installation
RUN wget -q https://raw.githubusercontent.com/AUTOMATIC1111/stable-diffusion-webui/master/webui.sh && \
    chmod +x webui.sh
