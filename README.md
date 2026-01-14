# Terraform Azure Static Website Project

## Overview
This project demonstrates the use of **Terraform** to provision and manage cloud infrastructure on **Microsoft Azure** using **Infrastructure as Code (IaC)** principles.

The infrastructure includes an Azure Resource Group, a Storage Account, and Static Website Hosting, with content deployed using the Azure CLI.

The project focuses on foundational DevOps practices such as declarative infrastructure, version control, safe change management, and cloud authentication.

---

## Technologies Used
- Terraform
- Microsoft Azure
- Azure CLI
- Git & GitHub
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
- Using `terraform init`, `terraform plan`, and `terraform apply` to manage infrastructure safely
- Managing Terraform providers and outputs
- Authenticating Terraform and Azure CLI using Azure Active Directory
- Understanding Azure control plane vs data plane permissions
- Deploying static website content to Azure Storage
- Verifying deployed infrastructure using Azure CLI and browser access

---

## How to Use This Project

### Prerequisites
- Azure subscription
- Terraform installed
- Azure CLI installed and authenticated
- Git

### Deployment Steps
`bash
terraform init
terraform plan
terraform apply

### Upload Website Content
az storage blob upload \
  --account-name <storage_account_name> \
  --container-name '$web' \
  --name index.html \
  --file index.html \
  --auth-mode login

## Result
The deployed website is publicly accessible via the Azure Storage static website endpoint and serves a simple HTML page hosted entirely on Azure infrastructure provisioned with Terraform

## Notes
This project was created as a personal learning project to build hands-on experience with Terraform and Azure, focusing on clarity, correctness, and best practices rather than complex architectures.

