#---BASE Image

FROM ubuntu

MAINTAINER Sukhada Sankpal<sukhadas@cybage.com>

#---Update system and set time

RUN apt-get -y --force-yes update

RUN echo "Asia/Kolkata" > /etc/timezone && dpkg-reconfigure --frontend noninteractive tzdata

RUN apt-get install -y --force-yes python-software-properties wget software-properties-common

#---- ADDING PACKAGAES TO REPO

RUN add-apt-repository ppa:webupd8team/java

#RUN echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections

RUN apt-get update -y --force-yes -qq

#----- JAVA

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y --force-yes openjdk-7-jre

ENV JAVA_HOME /usr/lib/jvm/java-1.7.0-openjdk-amd64

ENV PATH $PATH:$JAVA_HOME/bin

