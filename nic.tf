resource "azurerm_network_interface" "pb-nic1" {
  name                = "nic1"
  location            = azurerm_resource_group.rus-rg.location
  resource_group_name = azurerm_resource_group.rus-rg.name

  ip_configuration {
    name                          = "public"
    subnet_id                     = azurerm_subnet.pb1.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id = azurerm_public_ip.pub-ip.id 
  }
}

resource "azurerm_network_interface" "pr-nic1" {
  name                = "nic2"
  location            = azurerm_resource_group.rus-rg.location
  resource_group_name = azurerm_resource_group.rus-rg.name

  ip_configuration {
    name                          = "private"
    subnet_id                     = azurerm_subnet.pr1.id
    private_ip_address_allocation = "Dynamic"
    # public_ip_address_id = azurerm_public_ip.pub-ip.id 
  }
}