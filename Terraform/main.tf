# Provider configuration
provider "azurerm" {
  features {}

  client_id       = "04e31a99-a38a-4399-93c5-106b6cc2bd97"          # Client ID
  client_secret   = "m7H8Q~BQnmmUuihtALYpgzygknVRMOOUDMvRLdof"               # Client Secret
  subscription_id = "32e0ce79-368e-4fb4-860d-dac00be3ab4d"           # Subscription ID
  tenant_id       = "16b3c013-d300-468d-ac64-7eda0820b6d3"    
}

# Create a resource group
resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.location
}

# Create an App Service Plan
resource "azurerm_app_service_plan" "example" {
  name                = var.app_service_plan_name
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  kind                = "Linux"  # "Windows" if you prefer a Windows environment
  reserved            = true     # Required for Linux-based hosting

  sku {
    tier = var.app_service_plan_tier
    size = var.app_service_plan_size
  }
}

# Create the App Service (Web App)
resource "azurerm_app_service" "example" {
  name                = var.app_service_name
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  app_service_plan_id = azurerm_app_service_plan.example.id

  
}
