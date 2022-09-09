FROM alpine:latest

ENV JAVA_ARGS='-Xmx2G'

COPY ./update /update

WORKDIR /server

RUN apk add wget bash openjdk17-jre-headless

EXPOSE 25565

CMD ["/update/run.sh"]