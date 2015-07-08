FROM ubuntu:14.04

MAINTAINER Toshiya Kimura

RUN apt-get update && \
    apt-get upgrade -q -y && \
    apt-get install -q -y --no-install-recommends openjdk-7-jre-headless && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

ADD https://github.com/takezoe/gitbucket/releases/download/3.4/gitbucket.war /opt/gitbucket.war

RUN ln -s /gitbucket /root/.gitbucket

EXPOSE 8080

EXPOSE 29418

CMD ["java", "-jar", "/opt/gitbucket.war"]
