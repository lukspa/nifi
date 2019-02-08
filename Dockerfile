FROM apache/nifi:latest
LABEL maintainer="Łukasz Spandel"

COPY our_processor.nar /opt/nifi/nifi-current/lib/

mkdir -p ${NIFI_HOME}/current_flow

RUN sed -i 's/flow.xml.gz/flowstate\/flow.xml.gz/g' /opt/nifi/nifi-current/conf/nifi.properties

EXPOSE 8080
