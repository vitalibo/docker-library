FROM python:2
MAINTAINER Vitaliy Boyarsky <boyarsky.vitaliy@live.com>

RUN pip --no-cache-dir install awscli && \
    apt update && \
    apt install -y jq

ENTRYPOINT bash
