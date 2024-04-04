FROM openjdk:18

ENV -DSERVER_PORT 80
COPY build/libs/*.jar /app/
WORKDIR /app
EXPOSE 8080

ENTRYPOINT /app/start.sh
