# Docker-Based-Deployment-of-a-Multi-tier-Banking-Application
Docker-Based Deployment of a Multi-tier Banking Application
# Spring Boot Banking App Docker Deployment

This project demonstrates deploying a Spring Boot banking app on AWS EC2 using Docker and Docker Compose.

## Included

- Multi-stage Dockerfile
- MySQL Container Setup
- Docker Compose
- Docker Scout scan results

## 🐳 Multi-stage Dockerfile Explanation

This Dockerfile uses two stages:

- **Stage 1 (builder)**: Uses Maven with JDK 17 to compile and package the Spring Boot app into a `.jar` file.
- **Stage 2 (runtime)**: Uses a lightweight OpenJDK 17 Alpine image to run the generated `.jar` file.

👉 This approach keeps the final image small and production-ready.
