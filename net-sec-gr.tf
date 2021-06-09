resource "azurerm_network_security_group" "net-sec-gr" {
  name                = "rus-SecurityGroup1"
  location            = azurerm_resource_group.rus-rg.location
  resource_group_name = azurerm_resource_group.rus-rg.name

  security_rule {
    name                       = "inbound-rule1"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "22"
    destination_port_range     = "22"
    source_address_prefix      = "10.0.0.0/24"
    destination_address_prefix = "10.0.0.0/24"
  }

  security_rule {
    name                       = "inbound-rule2"
    priority                   = 101
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "80"
    destination_port_range     = "80"
    source_address_prefix      = "10.0.0.0/24"
    destination_address_prefix = "10.0.0.0/24"
  }

  security_rule {
    name                       = "outbound-rule1"
    priority                   = 103
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  tags = {
    environment = "Test"
  }
}