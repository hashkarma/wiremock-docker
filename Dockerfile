FROM openjdk:8

MAINTAINER Subhash Saxena

RUN mkdir /opt/wiremock
COPY build/wiremock-binary/wiremock-standalone-2.12.0.jar /opt/wiremock
COPY contracts/mappings /opt/wiremock/mappings
COPY contracts/__files /opt/wiremock/__files

WORKDIR /opt/wiremock
VOLUME ["/opt/wiremock/__files", "/opt/wiremock/mappings"]
ENTRYPOINT ["java", "-jar", "/opt/wiremock/wiremock-standalone-2.12.0.jar"]
