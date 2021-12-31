resource "azurerm_linux_virtual_machine" "tfvm" {
  name                = var.vmname
  resource_group_name = azurerm_resource_group.MyTfRG.name
  location            = azurerm_resource_group.MyTfRG.location
  size                = "Standard_F2"
  admin_username      = "adminuser"
  network_interface_ids = [
    azurerm_network_interface.TFNIC.id,
  ]

  admin_ssh_key {
    username   = "adminuser"
    public_key = file("~/.ssh/id_rsa.pub")
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }
	tags = var.tags

computer_name = var.vmname
disable_password_authentication = true
}
