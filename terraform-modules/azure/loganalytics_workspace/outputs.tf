output "name" {
  value       = azurerm_log_analytics_workspace.loganalytics_workspace.name
  description = "The name of the loganalytics workspace."
}

output "id" {
  value       = azurerm_log_analytics_workspace.loganalytics_workspace.id
  description = "The id for the log analytics workspace."
}

output "workspace_id" {
  value       = azurerm_log_analytics_workspace.loganalytics_workspace.workspace_id
  description = "The workspace id for the analytics workspace which is created."
}