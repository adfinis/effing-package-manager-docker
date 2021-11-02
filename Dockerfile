FROM debian:bullseye
MAINTAINER adfinis-sygroup.ch <info@adfinis-sygroup.ch>

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
    apt-get remove -y --purge build-essential ruby-dev && \
    apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/*
