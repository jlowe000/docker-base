FROM aarch64/ubuntu:trusty
MAINTAINER Wurstmeister 
# RUN apt-get update; apt-get install -y unzip openjdk-7-jre-headless wget supervisor docker.io openssh-server
RUN apt-get update; apt-get install -y unzip openjdk-7-jre-headless wget supervisor openssh-server
ENV JAVA_HOME /usr/lib/jvm/java-7-openjdk-arm64/
RUN echo 'root:wurstmeister' | chpasswd
RUN mkdir /var/run/sshd
RUN sed -i 's/PermitRootLogin without-password/PermitRootLogin yes/' /etc/ssh/sshd_config

EXPOSE 22
