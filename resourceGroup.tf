resource "azurerm_resource_group" "MyTfRG" {
  name = var.resourcegroupname
  location = var.location
  tags = var.tags
}
