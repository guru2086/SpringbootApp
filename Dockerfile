FROM 455480051272.dkr.ecr.us-east-1.amazonaws.com/java:amazoncorretto-17-alpine-jdk

ENV -DSERVER_PORT 80
COPY build/libs/*.jar /app/
WORKDIR /app
EXPOSE 8080

ENTRYPOINT /app/start.sh
