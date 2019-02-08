FROM apache/nifi:latest
LABEL maintainer="Łukasz Spandel"

COPY nifi-redis.nar /opt/nifi/nifi-current/lib/nifi-redis.nar

RUN mkdir -p ${NIFI_HOME}/current_flow &\
sed -i 's/flow.xml.gz/flowstate\/flow.xml.gz/g' /opt/nifi/nifi-current/conf/nifi.properties

EXPOSE 8080
