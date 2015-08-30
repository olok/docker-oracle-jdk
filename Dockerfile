FROM debian:jessie

RUN apt-get update && apt-get install -y wget

RUN mkdir /opt/jdk &&\
    wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" -O /opt/jdk/jdk.tar.gz http://download.oracle.com/otn-pub/java/jdk/8u60-b27/jdk-8u60-linux-x64.tar.gz &&\
    tar xpf /opt/jdk/jdk.tar.gz -C /opt/jdk --strip 1 &&\
    rm /opt/jdk.tar.gz &&\
    chown -R root:root /opt/jdk

ENV JAVA_HOME /opt/jdk
ENV PATH $PATH:/opt/jdk/bin
