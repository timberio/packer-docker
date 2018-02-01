FROM ubuntu:16.04
MAINTAINER David Antaramian <david@timber.io>

ENV DEBIAN_FRONTEND noninteractive

# Install initial apt dependencies
RUN apt-get update && apt-get install -y \
  curl \
  git \
  python3 \
  python3-pip \
  openssh-server \
  openssh-client \
  zip; \
  pip3 install ansible; \
  mkdir -p /opt/packer/bin; \
  curl -o /opt/packer.zip https://releases.hashicorp.com/packer/1.1.3/packer_1.1.3_linux_amd64.zip; \
  unzip /opt/packer.zip -d /opt/packer/bin; \
  apt-get clean
