FROM alpine:3.8

LABEL maintainer="Dmitry Kireev <dmitry@kireev.co>"

ARG JOLOKIA_VERSION=1.6.0

RUN mkdir -p /var/lib/jolokia/ && \
  wget http://search.maven.org/remotecontent?filepath=org/jolokia/jolokia-jvm/${JOLOKIA_VERSION}/jolokia-jvm-${JOLOKIA_VERSION}-agent.jar -O /var/lib/jolokia/jolokia-jvm-agent.jar && \
  chmod 755 /var/lib/jolokia/jolokia-jvm-agent.jar

VOLUME ["/var/lib/jolokia/"]

CMD ["/bin/sh", "-c", "while true; do sleep 1; done"]
