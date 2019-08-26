#!/bin/bash

# Command used to launch docker
DOCKER_CMD='sudo docker'

# Where to store the backups
BACKUP_PATH='/media/store/docker-backup'

# The name of the docker image
PROJECT_NAME="thunderbird"

# BUILD ARGS
BUILD_ARGS=(
    )

# LAUNCH ARGS
RUN_ARGS=(
    -e DISPLAY=$DISPLAY
    -v /tmp/.X11-unix:/tmp/.X11-unix

    --memory="2g"
    --cpu-shares=1024

    -v $(pwd)/data/thunderbird:/home/$(whoami)/.thunderbird
    -v $(pwd)/data/cache:/home/$(whoami)/.cache

    -v /home/$(whoami)/Documents:/home/$(whoami)/Documents
    -v /home/$(whoami)/Downloads:/home/$(whoami)/Downloads

    --rm
    -d
    )
