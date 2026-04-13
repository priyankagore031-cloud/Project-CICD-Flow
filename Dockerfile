# Use Java runtime base image
FROM openjdk:27-ea-trixie

# Set working directory inside container
WORKDIR /app

# Copy JAR from your system to container
COPY target/*.jar app.jar

# Run the JAR
ENTRYPOINT ["java", "-jar", "app.jar"]