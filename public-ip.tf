resource "azurerm_public_ip" "pub-ip" {
  name                = "rus-PublicIp1"
  resource_group_name = azurerm_resource_group.rus-rg.name
  location            = azurerm_resource_group.rus-rg.location
  allocation_method   = "Static"

  tags = {
    environment = "Production"
  }
}