resource "azurerm_public_ip" "TFPIP" {
  name                = var.ipaddressname
  resource_group_name = azurerm_resource_group.MyTfRG.name
  location            = azurerm_resource_group.MyTfRG.location
  allocation_method   = "Dynamic"

  tags = var.tags
}
