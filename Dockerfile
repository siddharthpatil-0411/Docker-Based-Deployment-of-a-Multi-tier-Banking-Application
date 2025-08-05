# ------------ Stage 1: Build the Application ------------

# Use Maven image with OpenJDK 17 to build the Spring Boot app
FROM maven:3.8.3-openjdk-17 AS builder

# Set the working directory inside the container
WORKDIR /app

# Copy all project files from host into the container
COPY . /app

# Build the project and skip tests to speed up the process
RUN mvn clean install -DskipTests=true


# ------------ Stage 2: Run the Application ------------

# Use a lightweight OpenJDK 17 image to run the app
FROM openjdk:17-alpine

# Set working directory inside the container
WORKDIR /app

# Copy the built JAR file from Stage 1 to this stage
COPY --from=builder /app/target/*.jar /app/target/bankapp.jar

# Expose port 8080 for the application
EXPOSE 8080

# Run the JAR file using the java -jar command
ENTRYPOINT ["java", "-jar", "/app/target/bankapp.jar"]
