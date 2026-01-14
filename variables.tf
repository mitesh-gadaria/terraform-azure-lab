# Terraform variables will be defined here

variable "project_name" {
  description = "Prefix used for naming Azure resources"
  type        = string
  default     = "terraform-azure-lab"
}

variable "location" {
  description = "Azure region to deploy resources into"
  type        = string
  default     = "uksouth"
}

variable "subscription_id" {
  type        = string
  description = "Azure subscription ID"
}

variable "tenant_id" {
  type        = string
  description = "Azure tenant ID"
}

