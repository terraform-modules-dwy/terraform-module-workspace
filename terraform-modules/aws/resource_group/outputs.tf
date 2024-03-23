output "name" {
  value       = aws_resourcegroups_group.resource_group.name
  description = "resource group name"
}

output "id" {
  value       = aws_resourcegroups_group.resource_group.id
  description = "resource group id"
}