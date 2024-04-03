FROM openjdk:18

# Set the working directory
WORKDIR /app

# Copy the JAR file into the container
COPY target/my-app.jar app.jar

# Expose port 8080
EXPOSE 8080

# Entrypoint
ENTRYPOINT ["java", "-jar", "app.jar"]
