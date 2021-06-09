provider "azurerm" {
  features {}
}

# Create a resource group
resource "azurerm_resource_group" "rus-rg" {
  name     = "rus-resources"
  location = "Canada Central"
}