# CI/CD Pipeline for Static Website

## Project Overview
This project demonstrates a complete DevOps CI/CD pipeline for deploying a static website using Docker, GitHub Actions, Terraform, and Ansible.

## Architecture

Developer Push Code
        ↓
GitHub Repository
        ↓
GitHub Actions Pipeline
        ↓
Docker Build
        ↓
Push Image to DockerHub
        ↓
Terraform creates EC2 instance
        ↓
Ansible deploys Docker container
        ↓
Website running on EC2

## Technologies Used

- Docker
- Nginx
- GitHub Actions
- Terraform
- Ansible
- AWS EC2

## Project Structure
cicd-static-website
│
├── website
│ └── index.html
│
├── Dockerfile
│
├── terraform
│ ├── main.tf
│ ├── variables.tf
│ ├── outputs.tf
│ └── terraform.tfvars
│
├── ansible
│ ├── inventory
│ └── deploy.yml
│
└── .github
└── workflows
└── pipeline.yml

## How to Run

1. Push code to GitHub
2. GitHub Actions builds Docker image
3. Image pushed to DockerHub
4. Terraform creates EC2 instance
5. Ansible deploys container

## Author
Ankit Singh Jadon
Project Architecture Diagram
          +-------------------+
          |   Developer Push  |
          +---------+---------+
                    |
                    v
           +------------------+
           |  GitHub Repo     |
           +--------+---------+
                    |
                    v
         +----------------------+
         | GitHub Actions CI/CD |
         +---------+------------+
                   |
                   v
           +----------------+
           | Docker Build   |
           +--------+-------+
                    |
                    v
           +----------------+
           | DockerHub      |
           +--------+-------+
                    |
                    v
           +----------------+
           | Terraform EC2  |
           +--------+-------+
                    |
                    v
           +----------------+
           | Ansible Deploy |
           +--------+-------+
                    |
                    v
           +----------------+
           | Website Live   |
           +----------------+
