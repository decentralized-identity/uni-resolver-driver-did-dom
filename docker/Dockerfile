# Dockerfile for universalresolver/driver-did-dom

FROM universalresolver/base-alpine
MAINTAINER Ricardo Cosme <ricardo.cosme@dominode.com>

# install dependencies

ARG GITHUB_READ_PACKAGES_OWNER
ARG GITHUB_READ_PACKAGES_TOKEN
ADD ./settings.xml /root/.m2/

# build driver-did-dom

ADD . /opt/driver-did-dom

RUN cd /opt/driver-did-dom && mvn clean install package -N -DskipTests

# done

EXPOSE 8086

RUN chmod a+rx /opt/driver-did-dom/docker/run-driver-did-dom.sh
CMD "/opt/driver-did-dom/docker/run-driver-did-dom.sh"
