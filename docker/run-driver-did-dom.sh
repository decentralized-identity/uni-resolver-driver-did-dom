#!/bin/sh

cd /opt/driver-did-dom/
mvn --settings settings.xml jetty:run -P war
