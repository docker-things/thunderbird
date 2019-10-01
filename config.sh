#!/bin/bash

# Command used to launch docker
DOCKER_CMD="`which docker`"

# Where to store the backups
BACKUP_PATH=""

# Where to store the communication pipes
FIFO_PATH="/tmp/docker-things/fifo"

# The name of the docker image
PROJECT_NAME="thunderbird"

# Meta to set in the .desktop file
APP_GENERIC_NAME="Mail Client"
APP_CATEGORIES="Application;Network;Email;"
APP_MIME_TYPE="x-scheme-handler/mailto;application/x-xpinstall;"
APP_PARAM="%u"

# BUILD ARGS
BUILD_ARGS=(
    )

# LAUNCH ARGS
RUN_ARGS=(
    -e DISPLAY=$DISPLAY
    -v /tmp/.X11-unix:/tmp/.X11-unix

    --memory="2g"
    --cpu-shares=512

    -v $(pwd)/data/thunderbird:/home/$(whoami)/.thunderbird
    -v $(pwd)/data/cache:/home/$(whoami)/.cache

    -v /home/$(whoami)/Documents:/home/$(whoami)/Documents
    -v /home/$(whoami)/Downloads:/home/$(whoami)/Downloads

    --rm
    -d
    )
