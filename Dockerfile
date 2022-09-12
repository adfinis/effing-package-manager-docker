FROM debian:bullseye

ARG FPM_VERSION=1.14.0

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      binutils \
      build-essential \
      cpio \
      git \
      python-setuptools \
      rpm \
      ruby \
      ruby-dev \
      wget \
      make && \
    gem install --no-document fpm && \
    apt-get remove -y --purge ruby-dev && \
    apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/*
