#resource "random_id" "randomid" {
#   keepers = {
#	resource_group      = azurerm_resource_group.MyTfRG.name
	
#       }
#	byte_length = 12	

#}


resource "azurerm_storage_account" "tfstoragetf" {
  name                     = var.storagename
  resource_group_name      = azurerm_resource_group.MyTfRG.name
  location                 = azurerm_resource_group.MyTfRG.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = var.tags
    
  
}
