# Terraform Azure Static Website with CI/CD

## Overview

This project demonstrates the use of Terraform to provision and manage cloud infrastructure on Microsoft Azure using Infrastructure as Code (IaC) principles.

The infrastructure includes an Azure Resource Group, a Storage Account, and Static Website Hosting, with content deployed using the Azure CLI.

The project focuses on foundational DevOps practices such as declarative infrastructure, version control, safe change management, cloud authentication, and CI/CD automation.

---

## Technologies Used

- Terraform
- Microsoft Azure
- Azure CLI
- Git & GitHub
- GitHub Actions
- HTML

---

## Infrastructure Components

- Azure Resource Group
- Azure Storage Account (StorageV2)
- Static Website Hosting enabled on the storage account
- HTTPS-only traffic enforced
- Role-Based Access Control (RBAC) for secure blob uploads

---

## What This Project Demonstrates

- Writing declarative Terraform configurations to define cloud infrastructure
- Using terraform init, terraform plan, and terraform apply to manage infrastructure safely
- Managing Terraform providers, variables, and outputs
- Authenticating Terraform and Azure CLI using Azure Active Directory
- Understanding Azure control plane vs data plane permissions
- Deploying static website content to Azure Storage
- Verifying deployed infrastructure using Azure CLI and browser access
- Automating infrastructure validation using CI/CD pipelines

---

## CI/CD Automation with GitHub Actions

This project includes a CI/CD pipeline implemented using GitHub Actions to automate Terraform checks.

The pipeline runs automatically on every push to the main branch and performs the following:

- Runs terraform fmt to enforce consistent formatting
- Runs terraform validate to verify Terraform configuration correctness
- Runs terraform plan to preview infrastructure changes against Azure (no auto-apply)

---

## Secure Authentication in CI

The CI pipeline authenticates to Azure using:

- An Azure Service Principal
- GitHub repository secrets:
  - ARM_CLIENT_ID
  - ARM_CLIENT_SECRET
  - ARM_SUBSCRIPTION_ID
  - ARM_TENANT_ID

No credentials are stored in the repository. Secrets are injected securely at runtime.

---

## CI/CD Design Notes

- terraform apply is intentionally not executed in CI
- The pipeline is designed for validation and learning purposes
- Infrastructure changes must be reviewed and applied manually

This approach demonstrates safe infrastructure workflows and best practices for junior DevOps engineers.

---

## How to Use This Project

### Prerequisites

- Azure subscription
- Terraform installed
- Azure CLI installed and authenticated
- Git

---

## Deployment Steps

Initialize Terraform:

terraform init

Preview infrastructure changes:

terraform plan

Apply infrastructure:

terraform apply

---

## Upload Website Content

Upload the static website content using Azure CLI:

az storage blob upload \
--account-name <storage_account_name> \
--container-name '$web' \
--name index.html \
--file index.html \
--auth-mode login

---

## Result

The deployed website is publicly accessible via the Azure Storage static website endpoint and serves a simple HTML page hosted entirely on Azure infrastructure provisioned with Terraform.

---

## Notes

This project was created as a personal learning and portfolio project to build hands-on experience with Terraform, Azure, and CI/CD automation, focusing on clarity, correctness, and best practices rather than complex architectures.

---

## Author

Created by Mitesh Gadaria as part of a DevOps learning portfolio.

