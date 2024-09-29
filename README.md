# Tacto Docker

This repository contains the Docker setup for running **Tacto**, a differentiable tactile simulation library. The provided Docker configuration simplifies the installation process and ensures a consistent environment for developing and testing tactile simulations using Tacto.

## Features

- **Pre-configured Environment**: Docker image with all necessary dependencies for running Tacto.
- **Cross-platform Support**: Easily run the Tacto simulation on any system that supports Docker.
- **Efficient Setup**: Skip manual installation of dependencies and jump right into development.

## Requirements

- **Docker**: Make sure Docker is installed on your system. You can download it from [Docker's official website](https://www.docker.com/get-started).
  
  For Ubuntu, you can install Docker with the following commands:
  ```bash
  sudo apt update
  sudo apt install docker.io
  sudo systemctl start docker
  sudo systemctl enable docker
  ```

1.Clone this repo:
```bash
git clone https://github.com/nsk-05/tacto_docker.git
cd tacto_docker
 ```
2.Build the docker
```bash
sudo ./build.sh
```
3.Start the docker
```bash
sudo ./start.sh
```
4.Connect to interactive shell
```bash
sudo ./attach.sh
```
5.Starting the tacto example
Move to the tacto/example directories in the docker shell
```bash
cd tacto/example
python demo_pybullet_digit.py
```
