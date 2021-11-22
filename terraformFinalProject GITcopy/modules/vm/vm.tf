resource "azurerm_network_interface" "test" {
  name     = "${var.prefix}-NetInterface"
  location = "${var.location}"
  resource_group_name  = "${var.resource_group}"

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.test.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.test.id
  }
}

resource "azurerm_linux_virtual_machine" "test" {
  name                = "${var.prefix}-vm"
  location            = "${var.location}"
  resource_group_name  = "${var.resource_group}"
  size                = "Standard_B1"
  admin_username      = "testadmin"
  network_interface_ids = azurerm_network_interface.test.id
  admin_ssh_key {
    username   = "testadmin"
    public_key = "file("${path.module}/ssh-keys/id_rsa.pub")"
    
  }
  os_disk {
    caching           = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }
  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "16.04-LTS"
    version   = "latest"
  }
}
