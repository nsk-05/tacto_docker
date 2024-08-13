# Use the official Python 3.6 image as a base image
FROM python:3.8

# Set environment variables to avoid interactive prompts

# ENV DEBIAN_FRONTEND=noninteractive
# ENV TZ=Asia/Kolkata

# Set the working directory in the container
WORKDIR /app

# Install necessary packages
RUN apt-get update && apt-get install -y \
    python3-pip \
    git \
    wget \
    libgl1-mesa-glx \
    libglib2.0-0 \
    locales \
    tzdata \
    libsm6 \
    libxext6 \
    libglew-dev \
    qtbase5-dev \
    libqt5opengl5-dev \
    libcgal-dev \
    libceres-dev \
    python3-opencv \
    libxrender-dev \
    libglib2.0-0 \
    x11-apps \
    && rm -rf /var/lib/apt/lists/*

# Copy the local tacto directory into the container
COPY tacto /app/tacto

# Install tacto
RUN pip install -e /app/tacto 

# Expose the display port (optional, for remote display)
# EXPOSE 5900
# CMD ["bash"]
