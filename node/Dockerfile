FROM node:18
MAINTAINER Johan Lundberg <lundberg@sunet.se>
RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections
RUN apt-get -q update
RUN apt-get -y upgrade
RUN apt-get install -y locales git-core wget sloccount default-jdk-headless
# Dependencies for headless chrome
RUN apt-get install -y \
    libpangocairo-1.0-0 \
    libx11-xcb1 \
    libxcomposite1 \
    libxcursor1 \
    libxdamage1 \
    libxi6 \
    libxtst6 \
    libnss3 \
    libcups2 \
    libxss1 \
    libxrandr2 \
    libgconf-2-4\
    libasound2 \
    libatk1.0-0 \
    libgtk-3-0
RUN apt-get clean
RUN adduser --disabled-password --disabled-login --gecos jenkins jenkins
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8
COPY run.sh /run.sh
