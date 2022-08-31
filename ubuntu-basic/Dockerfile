FROM ubuntu:latest
LABEL maintainer="mail@co1in.me"

ARG TARGETOS
ARG TARGETARCH

SHELL ["/bin/bash", "-c"]

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
RUN set -ex; echo "Building for ${TARGETOS}/${TARGETARCH}" \
    && if [[ "${TARGETARCH}" == "amd64" ]]; then \
            INSTALL_SCRIPT=Miniconda3-latest-Linux-x86_64.sh; \
        elif [[ "${TARGETARCH}" == "arm64" ]]; then \
            INSTALL_SCRIPT=Miniconda3-latest-Linux-aarch64.sh; \
        else \
            echo "Unknown architecture: ${TARGETARCH}"; \
            exit 1; \
        fi \
    && curl -O https://repo.anaconda.com/miniconda/${INSTALL_SCRIPT} \
    && ls -l && bash ~/${INSTALL_SCRIPT} -b \
    && ls -l \
    && ~/miniconda3/bin/conda init bash \
    && ~/miniconda3/bin/conda init zsh

CMD [ "zsh" ]
