# Start with a base image that has Java 17
FROM openjdk:17-jdk-alpine

# Add a Maintainer label to describe who is maintaining the image
LABEL maintainer="your-email@example.com"

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file from the host to the container
# Assume the JAR file is named `app.jar` after the build
COPY target/app.jar /app/app.jar

# Expose the port that the application will run on
# Make sure this matches the port your Spring Boot application uses
EXPOSE 8080

# Set environment variables (optional)
# You can set various environment variables that your Spring Boot app might need
# ENV SPRING_PROFILES_ACTIVE=prod

# Run the JAR file
# The entrypoint allows to run the Spring Boot app directly as the container starts
ENTRYPOINT ["java", "-jar", "/app/app.jar"]

# Optionally add a default command, not really necessary in this case
# CMD ["java", "-jar", "/app/app.jar"]
