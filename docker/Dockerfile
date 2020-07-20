# Dockerfile for universalresolver/driver-did-dom

FROM maven:3-jdk-11
MAINTAINER Ricardo Cosme <ricardo.cosme@dominode.com>

USER root

ENV PATH $JAVA_HOME/bin:$PATH

# install dependencies

RUN mvn org.apache.maven.plugins:maven-dependency-plugin:3.1.1:get -Dartifact=org.eclipse.jetty:jetty-maven-plugin:9.4.18.v20190429
RUN mvn org.apache.maven.plugins:maven-dependency-plugin:3.1.1:get -DrepoUrl=https://repo.maven.apache.org/maven2 -Dartifact=org.apache.maven.plugins:maven-war-plugin:3.2.2

# build driver-did-dom

ADD . /opt/driver-did-dom
RUN cd /opt/driver-did-dom && mvn clean install package -N -DskipTests

# done

EXPOSE 8086

RUN chmod a+rx /opt/driver-did-dom/docker/run-driver-did-dom.sh
CMD "/opt/driver-did-dom/docker/run-driver-did-dom.sh"
