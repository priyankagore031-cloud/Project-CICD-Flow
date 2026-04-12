# Use Java runtime base image
FROM openjdk:17-jdk-slim

# Set working directory inside container
WORKDIR /app

# Copy JAR from your system to container
COPY target/Project-CICD-Flow-1.0-SNAPSHOT.jar app.jar

# Run the JAR
ENTRYPOINT ["java", "-jar", "app.jar"]