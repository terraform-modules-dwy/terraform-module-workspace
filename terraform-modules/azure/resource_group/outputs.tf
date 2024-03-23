output "name" {
  value       = azurerm_resource_group.resource_group.name
  description = "name of the resource group"
}

output "id" {
  value       = azurerm_resource_group.resource_group.id
  description = "rg ids"
}