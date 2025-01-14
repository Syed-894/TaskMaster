# Use OpenJDK as the base image
FROM openjdk:17-jdk-slim

# Set the working directory
WORKDIR /app

# Copy the JAR file to the container
COPY target/taskmaster-*.jar app.jar

# Expose the application port
EXPOSE 8085

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
