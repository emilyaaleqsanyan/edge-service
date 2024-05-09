# Use a different base image with Java and Alpine Linux
FROM openjdk:17-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the compiled JAR file into the container
COPY build/libs/edge-service-0.0.1-SNAPSHOT.jar app.jar

# Specify the command to run your Spring Boot application
CMD ["java", "-jar", "app.jar"]
