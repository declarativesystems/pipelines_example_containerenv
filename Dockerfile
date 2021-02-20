FROM ubuntu:focal-20210119

ARG DEBIAN_FRONTEND=noninteractive

# usable apt proves buildah/podman working in containerised environment
RUN apt update \
    && apt install -y curl bzip2
