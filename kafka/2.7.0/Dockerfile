FROM adoptopenjdk:11.0.10_9-jre-hotspot
MAINTAINER Vitaliy Boyarsky <boyarsky.vitaliy@live.com>

ARG kafkaVersion=2.7.0
ARG scalaVersion=2.13

WORKDIR /opt/kafka

RUN curl -f -sLS "https://archive.apache.org/dist/kafka/$kafkaVersion/kafka_$scalaVersion-$kafkaVersion.tgz" \
    | tar xvz --strip-components=1 -C /opt/kafka \
    && rm -rf site-docs

EXPOSE 9092

CMD ["bin/kafka-server-start.sh", "config/server.properties"]
