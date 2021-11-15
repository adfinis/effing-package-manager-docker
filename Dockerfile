FROM debian:bullseye
MAINTAINER adfinis.com <info@adfinis.com>

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
      make && \
    gem install --no-document fpm && \
    apt-get remove -y --purge ruby-dev && \
    apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/*
