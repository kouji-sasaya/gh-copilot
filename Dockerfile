# syntax=docker/dockerfile:1

FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    ca-certificates \
    neovim \
    git \
    sudo \
    wget \
    curl \
 && rm -rf /var/lib/apt/lists/*


RUN ln -f /usr/bin/nvim /usr/bin/vi
RUN ln -f /usr/bin/nvim /usr/bin/vim
RUN curl -fsSL https://gh.io/copilot-install | bash
#RUN echo "ubuntu ALL=NOPASSWD: ALL" >  /etc/sudoers.d/ubuntu
WORKDIR /workdir

COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
