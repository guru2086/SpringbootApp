FROM openjdk:18

ENV -DSERVER_PORT 80
RUN dir -s 
RUN tree -a
CMD ["tree", "-a"]
COPY target/blucore-0.0.1-SNAPSHOT.jar /app/
WORKDIR /app
EXPOSE 8080

ENTRYPOINT /app/start.sh
