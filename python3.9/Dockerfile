FROM debian:stable
MAINTAINER Johan Lundberg <lundberg@sunet.se>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get -y dist-upgrade && \
    apt-get install -y \
        autoconf \
        build-essential \
        cmake \
        default-jdk-headless \
        git-core \
        libffi-dev \
        libpcsclite-dev \
        libseccomp-dev \
        libssl-dev \
        libssl-dev \
        libtool \
        libxml2-dev \
        libxslt-dev \
        libyaml-dev \
        libyaml-dev \
        libz-dev \
        locales \
        pkgconf \
        python3 \
        python3-dev \
        python3-venv \
        sloccount \
        swig \
        wget automake \
        xmlsec1 \
        xsltproc \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN adduser --disabled-password --disabled-login --gecos jenkins jenkins
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8
COPY run.sh /run.sh
