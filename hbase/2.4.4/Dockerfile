FROM adoptopenjdk:11.0.10_9-jre-hotspot
MAINTAINER Vitaliy Boyarsky <boyarsky.vitaliy@live.com>

ARG hbaseVersion=2.4.4

WORKDIR /opt/hbase

RUN curl -f -sLS "https://archive.apache.org/dist/hbase/$hbaseVersion/hbase-$hbaseVersion-bin.tar.gz" \
    | tar xvz --strip-components=1 -C /opt/hbase \
    && rm -rf docs

EXPOSE 16000 16010
EXPOSE 16020 16030
EXPOSE 60010
