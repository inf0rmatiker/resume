FROM debian:stable-slim AS base
ENV DEBIAN_FRONTEND noninteractive

COPY ./config/etc/apt/sources.list /etc/apt/sources.list

RUN apt-get update && apt-get install -qyf \
    curl \
    jq \
    make \
    git \
    python3-pygments \
    gnuplot \
    texlive-latex-recommended \
    texlive-latex-extra \
    texlive-fonts-recommended

RUN rm -rf /var/lib/apt/lists/*

WORKDIR /data
VOLUME ["/data"]