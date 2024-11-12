# Define the region for your resources
variable "location" {
  description = "The Azure region to deploy resources in."
  type        = string
  default     = "West Europe"
}

# Define the name of the resource group
variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
  default     = "terra-resources"
}

# Define the name of the App Service Plan
variable "app_service_plan_name" {
  description = "The name of the App Service Plan."
  type        = string
  default     = "Topg-ASp"
}

# Define the name of the App Service (Web App)
variable "app_service_name" {
  description = "The name of the App Service (Web App)."
  type        = string
  default     = "abhiteraa-app12"
}

# Define the App Service Plan tier (e.g., Standard, Premium, etc.)
variable "app_service_plan_tier" {
  description = "The tier for the App Service Plan."
  type        = string
  default     = "Standard"
}

# Define the size of the App Service Plan (e.g., S1, P1V2, etc.)
variable "app_service_plan_size" {
  description = "The size of the App Service Plan."
  type        = string
  default     = "S1"
}

# Define app settings (optional key-value pairs)
variable "app_settings" {
  description = "Key-value pairs for the app's configuration."
  type        = map(string)
  default     = {
    "SOME_KEY" = "some_value"
  }
}
