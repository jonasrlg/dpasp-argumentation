FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    python3 python3-pip python3-pygments \
    texlive-full \
    build-essential \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

WORKDIR /workspace
