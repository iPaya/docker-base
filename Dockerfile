FROM ubuntu:14.04

MAINTAINER Di Zhang <zhangdi_me@163.com>

ADD ./sources.list /etc/apt/sources.list

RUN apt-get update && \
    apt-get install -y ntp build-essential supervisor wget git

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*