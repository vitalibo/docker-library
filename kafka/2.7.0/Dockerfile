FROM adoptopenjdk:11.0.10_9-jre-hotspot
MAINTAINER Vitaliy Boyarsky <boyarsky.vitaliy@live.com>

ARG kafkaVersion=2.7.0
ARG scalaVersion=2.13

WORKDIR /opt/kafka

RUN file="kafka_$scalaVersion-$kafkaVersion.tgz" \
    && curl -f -sLS -o $file "https://downloads.apache.org/kafka/$kafkaVersion/$file" \
    && tar xzf $file --strip-components=1 -C /opt/kafka \
    && rm -rf $file site-docs

EXPOSE 9092

CMD ["bin/kafka-server-start.sh", "config/server.properties"]
