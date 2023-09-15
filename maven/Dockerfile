FROM maven:3.6.3-jdk-11
MAINTAINER Johan Lundberg <lundberg@sunet.se>
RUN apt -q update
RUN apt -y upgrade
RUN apt install -y locales git-core wget sloccount
RUN apt clean
RUN adduser --disabled-password --disabled-login --gecos jenkins jenkins
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8
COPY run.sh /run.sh
