FROM ubuntu:latest
LABEL maintainer="mail@co1in.me"

ARG TARGETOS
ARG TARGETARCH

SHELL ["/bin/bash", "-c"]

RUN set -ex; apt update; \
    apt install -y git sudo curl build-essential strace
RUN set -ex; userdel -r ubuntu; \
    useradd -m -s /bin/bash -G sudo ubuntu; \
    echo "root:ubuntu" | chpasswd; \
    echo "ubuntu:ubuntu" | chpasswd; \
    echo "ubuntu ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
USER ubuntu
WORKDIR /home/ubuntu
RUN set -ex; echo 'setup by ML-Env-Setup'; \
    git clone https://github.com/Co1lin/ML-Env-Setup.git; \
    cd ML-Env-Setup; \
    bash 0_basic.sh
RUN set -ex; echo "Building for ${TARGETOS}/${TARGETARCH}"; \
    curl -L -O "https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-$(uname)-$(uname -m).sh"; \
    ls -l; bash Miniforge3-$(uname)-$(uname -m).sh -b; \
    ls -l; \
    ~/miniforge3/bin/mamba init bash; \
    ~/miniforge3/bin/mamba init zsh

CMD [ "zsh" ]
