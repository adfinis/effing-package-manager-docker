FROM debian:bullseye
MAINTAINER adfinis.com <info@adfinis.com>

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      ruby \
      ruby-dev \
      build-essential \
      rpm \
      binutils \
      python-setuptools \
      cpio \
      make && \
    gem install --no-document fpm && \
    apt-get remove -y --purge ruby-dev && \
    apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/*
