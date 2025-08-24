# Use Debian-based Temurin image to avoid Alpine exec format issues
FROM eclipse-temurin:17-jdk

# Expose application port
EXPOSE 8080

# Set working directory
ENV APP_HOME /usr/src/app
WORKDIR $APP_HOME

# Copy the Spring Boot jar
COPY target/*.jar app.jar

# Run the application
CMD ["java", "-jar", "app.jar"]
