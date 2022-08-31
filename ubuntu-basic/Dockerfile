FROM ubuntu:latest
LABEL maintainer="mail@co1in.me"

RUN set -ex; apt update \
    && apt install -y git sudo curl
RUN set -ex; useradd -m -s /bin/bash -G sudo ubuntu \
    && echo "root:ubuntu" | chpasswd \
    && echo "ubuntu:ubuntu" | chpasswd \
    && echo "ubuntu ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
USER ubuntu
WORKDIR /home/ubuntu
RUN set -ex; echo 'setup by ML-Env-Setup' \
    && git clone https://github.com/Co1lin/ML-Env-Setup.git \
    && cd ML-Env-Setup \
    && bash 0_basic.sh
RUN set -ex; curl -O https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh \
    && ls -l && bash ~/Miniconda3-latest-Linux-x86_64.sh -b \
    && ls -l \
    && ~/miniconda3/bin/conda init bash \
    && ~/miniconda3/bin/conda init zsh

CMD [ "zsh" ]
