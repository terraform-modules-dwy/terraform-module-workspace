variable "name" {
  type        = string
  description = " (Required) The Name which should be used for this Resource Group. Changing this forces a new Resource Group to be created."
  validation {
    condition     = can(regex("^rg-", var.name))
    error_message = "The resource group name should start with rg-**"
  }
}

variable "location" {
  type        = string
  description = "(Required) Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created."
  validation {
    condition     = contains(["east-us", "west-us"], var.location)
    error_message = "The resource group location is not given as mentioned. please verify"
  }
}

variable "tags" {
  default     = {
    "env"="remote-module-rg"
  }
  description = "(Optional) tags for the resource group."
}