# Terraform outputs will be defined here

output "project_name" {
  value = var.project_name
}

output "location" {
  value = var.location
}

output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}

