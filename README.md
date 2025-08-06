# Docker-Based-Deployment-of-a-Multi-tier-Banking-Application
Docker-Based Deployment of a Multi-tier Banking Application
# Spring Boot Banking App Docker Deployment

This project demonstrates deploying a Spring Boot banking app on AWS EC2 using Docker and Docker Compose.

## Included

- Multi-stage Dockerfile
- MySQL Container Setup
- Docker Compose
- Docker Scout scan results

# 🚀 Spring Boot Banking App Deployment Using Docker on AWS EC2

This project demonstrates how to containerize and deploy a Spring Boot + MySQL banking application using Docker and Docker Compose on an AWS EC2 Ubuntu instance. It also includes Docker Scout for image security scanning and Docker Hub publishing.
---

## 🏗️ Step 1: Launch EC2 Instance on AWS

1. Launch an EC2 instance with the following configuration:
   - **Name**: `banking-app`
   - **AMI**: Ubuntu (20.04 or later)
   - **Instance Type**: `t2.micro` (for dev) or `t2.medium`
   - **Storage**: Minimum 8 GB
   - **Security Group**:
     - ✅ SSH (22)
     - ✅ HTTP (80)
     - ✅ HTTPS (443)
     - ✅ Custom TCP (8080) – App Port
   - **Key Pair**: Existing or new

---
