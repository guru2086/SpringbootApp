FROM openjdk:18

# Set the working directory
WORKDIR /app

# Copy the JAR file into the container
COPY /home/runner/work/SpringbootApp/SpringbootApp/target/blucore-0.0.1-SNAPSHOT.jar app.jar

# Expose port 8080
EXPOSE 8080

# Entrypoint
ENTRYPOINT ["java", "-jar", "app.jar"]
