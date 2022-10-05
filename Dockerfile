FROM openjdk:11-jre-slim

RUN mkdir /json-api

WORKDIR /json-api

ADD https://github.com/digital-asset/daml/releases/download/v2.3.2/http-json-2.3.2.jar http-json-api.jar
#ADD json-api.conf json-api.conf

CMD [ "java", "-jar", "http-json-api.jar", "-c", "config/json-api.conf" ]
