FROM node:14.15

WORKDIR /core

RUN apt-get update && \
    apt-get -y install --no-install-recommends \
    build-essential \
    jq \
    iptables \
    python \
    vim && \
    rm -rf /var/lib/apt/lists/*


EXPOSE 4000 4003