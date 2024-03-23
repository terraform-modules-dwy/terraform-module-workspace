variable "name" {
  type        = string
  description = "(Required) Specifies the name of the Log Analytics Workspace. Workspace name should include 4-63 letters, digits or '-'. The '-' shouldn't be the first or the last symbol. Changing this forces a new resource to be created."
}

variable "resource_group_name" {
  type        = string
  description = "(Required) The name of the resource group in which the Log Analytics workspace is created. Changing this forces a new resource to be created."
}

variable "location" {
  type        = string
  description = " (Required) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
}

variable "sku_name" {
  type = string
  validation {
    condition     = contains(["Free", "Standard", "PerGB2018"], var.sku_name)
    error_message = "The allowed SKU are Free,Standard and PerGB2018"
  }
  description = " (Optional) Specifies the SKU of the Log Analytics Workspace. Possible values are Free, PerNode, Premium, Standard, Standalone, Unlimited, CapacityReservation, and PerGB2018 (new SKU as of 2018-04-03). Defaults to PerGB2018."
}

variable "retention_days" {
  type = number
  validation {
    condition     = var.retention_days >= 30 || var.retention_days <= 50
    error_message = "The log retention days should be configured between 30 to 50 only."
  }
  description = "Optional) The workspace data retention in days. Possible values are either 7 (Free Tier only) or range between 30 and 730."
}