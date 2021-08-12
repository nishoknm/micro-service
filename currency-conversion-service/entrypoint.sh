#!/usr/bin/env bash

# wait for eureka-server
./wait-for-it.sh eureka-server:8900 -t 40

# wait for the currency-exchange-service to start
./wait-for-it.sh currency-exchange-service:8000 -t 40

# start the spring boot application
export JAVA_OPTS="-Dserver.port=${SERVER_PORT} -Deureka.client.serviceURL.defaultZone=${EUREKA_SERVER}"
echo $JAVA_OPTS
exec java -jar $JAVA_OPTS /currency-conversion-service-0.0.1-SNAPSHOT.jar