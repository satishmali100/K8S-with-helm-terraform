# 🚀 AKS Infrastructure & Application Deployment (One-Click CI/CD)

[![Deploy Status](https://github.com/satishmali100/githubactions/actions/workflows/deploy.yaml/badge.svg)](https://github.com/satishmali100/githubactions/actions/workflows/deploy.yaml)

## 📋 Project Overview
This repository demonstrates a complete **Infrastructure as Code (IaC)** and **Continuous Deployment (CI/CD)** pipeline for deploying a microservices application on **Azure Kubernetes Service (AKS)** using **Terraform** and **GitHub Actions**.

## ✨ Key Features
- **One-Click Deployment**: A single `git push` to the `main` branch triggers the entire CI/CD pipeline to provision the infrastructure and deploy the application automatically.
- **Infrastructure as Code**: Fully automated provisioning of AKS, Virtual Network, Subnet, and Storage Account using reusable Terraform modules.
- **Secure Authentication**: Uses **OIDC (OpenID Connect)** for passwordless, zero-secret authentication between GitHub Actions and Azure.
- **Remote State Management**: Terraform state files are securely stored and locked in a centralized Azure Storage Account, enabling collaboration.
- **Kubernetes Manifest Deployment**: Automatically applies Kubernetes YAMLs (Deployments, Services, Ingress, HPA, PVCs, ConfigMaps) to the AKS cluster post-infrastructure creation.

## 🛠️ Tech Stack
| Technology | Purpose |
| :--- | :--- |
| **Azure Kubernetes Service (AKS)** | Container Orchestration Platform |
| **Terraform** | Infrastructure Provisioning (IaC) |
| **GitHub Actions** | CI/CD Pipeline Orchestration |
| **Azure OIDC (Federated Credentials)** | Secure, Passwordless Authentication |
| **Azure Storage Account** | Remote Terraform State Backend |
| **Kubernetes YAMLs** | Application Deployment Manifests |

## 🚀 How to Use (One-Click Deployment)
1. **Fork/Clone** this repository.
2. Set up the following **GitHub Secrets** in your repository settings (`Settings > Secrets and variables > Actions`):
   - `AZURE_CLIENT_ID`
   - `AZURE_TENANT_ID`
   - `AZURE_SUBSCRIPTION_ID`
3. Push any changes to the `main` branch.

The **GitHub Actions pipeline** will automatically:
1. ✅ Login to Azure using OIDC.
2. ✅ Provision the AKS Cluster, VNet, and Subnet.
3. ✅ Deploy all Kubernetes manifests to the new cluster.

## 📂 Repository Structure
```text
.
├── .github/workflows/          # CI/CD Pipeline definitions
│   └── deploy.yaml             # Main deployment workflow
├── Environments/               # Terraform environment configurations
│   └── non-prod/               # Non-production environment
│       ├── backend.tf          # Remote state configuration
│       ├── main.tf             # Main infrastructure definition
│       ├── provider.tf         # Azure provider configuration
│       └── terraform.tfvars    # Variable values
├── kubernetes/                 # Kubernetes manifest files
│   ├── deployment.yaml
│   ├── services.yaml
│   ├── ingress.yaml
│   ├── hpa.yaml
│   └── configmap.yaml
└── modules/                    # Reusable Terraform modules
    ├── 1_azurerm_resource_group
    ├── 2_azurerm_virtual_network
    ├── 3_azurerm_subnet
    ├── 4_azurerm_kubernetes_cluster
    └── 5_azurerm_storage_account
