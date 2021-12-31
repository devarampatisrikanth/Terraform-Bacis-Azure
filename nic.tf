resource "azurerm_network_interface" "TFNIC" {
  name                = var.nicname
  location            = azurerm_resource_group.MyTfRG.location
  resource_group_name = azurerm_resource_group.MyTfRG.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.TFSUBNET_APP.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id  = azurerm_public_ip.TFPIP.id
 
}
tags = var.tags
}

resource "azurerm_network_interface_security_group_association" "TFNICSG" {
  network_interface_id      = azurerm_network_interface.TFNIC.id
  network_security_group_id = azurerm_network_security_group.TFNSG.id
}
