
FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        git \
        make \
        gcc \
        g++ \
        cmake \
        libsctp-dev \
        lksctp-tools \
        iproute2 \
        iputils-ping \
        ca-certificates && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /ueransim

RUN git clone https://github.com/aligungr/UERANSIM.git .

RUN make -j2