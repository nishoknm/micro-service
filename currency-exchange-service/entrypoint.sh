#!/usr/bin/env bash

# wait for the mysql db to start
./wait-for-it.sh db:3306 -t 40

# wait for eureka-server
./wait-for-it.sh eureka-server:8900 -t 40

# start the spring boot application
export JAVA_OPTS="-Dserver.port=${SERVER_PORT} -Deureka.client.serviceURL.defaultZone=${EUREKA_SERVER} -Dspring.datasource.url=jdbc:mysql://${DB_HOST}:${DB_PORT}/${DB_DATABASE}"
echo $JAVA_OPTS
exec java -jar $JAVA_OPTS /currency-exchange-service-0.0.1-SNAPSHOT.jar