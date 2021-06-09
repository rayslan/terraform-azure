resource "azurerm_virtual_network" "rus-vnet" {
  name                = "rus-virtualNetwork1"
  location            = azurerm_resource_group.rus-rg.location
  resource_group_name = azurerm_resource_group.rus-rg.name 
  address_space       = ["10.0.0.0/16"]
#   dns_servers         = ["10.0.0.4", "10.0.0.5"]

#   ddos_protection_plan {
#     id     = azurerm_network_ddos_protection_plan.example.id
#     enable = true
#   }

  tags = {
    environment = "Test"
  }
}
output "name" {
  value = azurerm_virtual_network.rus-vnet
}