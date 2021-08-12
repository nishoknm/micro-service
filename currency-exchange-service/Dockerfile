FROM amazoncorretto:11-al2-jdk
COPY build/libs/currency-exchange-service-0.0.1-SNAPSHOT.jar currency-exchange-service-0.0.1-SNAPSHOT.jar
COPY wait-for-it.sh wait-for-it.sh
COPY entrypoint.sh entrypoint.sh
ENTRYPOINT ["./entrypoint.sh"]