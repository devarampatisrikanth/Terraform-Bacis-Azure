resource "azurerm_virtual_network" "TFVNET" {
  name = var.vnetname
  location = var.location
  address_space = ["10.0.0.0/8"]
resource_group_name = azurerm_resource_group.MyTfRG.name
tags = var.tags
}

resource "azurerm_subnet" "TFSUBNET_APP" {
  name = var.subnetname
  address_prefixes = ["10.0.1.0/24"]
  resource_group_name = azurerm_resource_group.MyTfRG.name
  virtual_network_name = azurerm_virtual_network.TFVNET.name
#  tags = var.tags
}
