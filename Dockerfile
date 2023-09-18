FROM ubuntu:22.04
MAINTAINER Leif Johansson <leifj@mnt.se>
RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections
RUN /bin/sed -i s/archive.ubuntu.com/se.archive.ubuntu.com/g /etc/apt/sources.list
RUN apt-get -q update
RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt-get -y upgrade
RUN apt-get install -y \
    autoconf \
    automake \
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
    python-dev \
    python-virtualenv \
    python2.7 \
    python3 \
    python3-dev \
    python3-venv \
    python3.7 \
    python3.7-dev \
    python3.7-venv \
    python3.8 \
    python3.8-dev \
    python3.8-venv \
    python3.9 \
    python3.9-dev \
    python3.9-venv \
    sloccount \
    swig \
    wget \
    xmlsec1 \
    xsltproc
RUN apt-get clean
RUN adduser --disabled-password --disabled-login --gecos jenkins jenkins
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8
COPY builders /opt/builders
COPY run.sh /run.sh
