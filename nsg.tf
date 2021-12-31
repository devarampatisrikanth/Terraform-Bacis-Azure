resource "azurerm_network_security_group" "TFNSG" {
  name                = var.nsgname
  location            = azurerm_resource_group.MyTfRG.location
  resource_group_name = azurerm_resource_group.MyTfRG.name

  security_rule {
    name                       = "https"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "443"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  tags = var.tags
}
