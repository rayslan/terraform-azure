resource "azurerm_subnet" "pr1" {
  name                 = "private-subnet"
  resource_group_name  = azurerm_resource_group.rus-rg.name
  virtual_network_name = azurerm_virtual_network.rus-vnet.name
  address_prefixes     = ["10.0.1.0/24"]
  

}

resource "azurerm_subnet" "pb1" {
  name                 = "public-subnet"
  resource_group_name  = azurerm_resource_group.rus-rg.name
  virtual_network_name = azurerm_virtual_network.rus-vnet.name
  address_prefixes     = ["10.0.101.0/24"]


}