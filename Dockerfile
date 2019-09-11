FROM gui-apps-base:18.04
MAINTAINER Gabriel Ionescu <gabi.ionescu+dockerthings@protonmail.com>

RUN apt-get update \
 && apt-get install -y \
        thunderbird \
 && apt-get clean -y \
 && apt-get autoclean -y \
 && apt-get autoremove -y

# SET USER
USER $DOCKER_USERNAME

# ENTRYPOINT
ENTRYPOINT ["/usr/bin/thunderbird"]

