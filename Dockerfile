FROM ubuntu:20.04

ENV TZ=Etc/UTC
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone && \
    apt-get update && \ 
    apt-get install -y \
    vim \
    curl \
    wget \
    git \
    net-tools \
    iputils-ping \
    traceroute \
    dnsutils \
    netcat \
    mtr-tiny \
    jq \
    nmap \
    ssh \
    tcpdump \
    netcat \
    tcpflow

