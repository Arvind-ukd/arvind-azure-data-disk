resource "azurerm_managed_disk" "example" {
  count                = 4
  name                 = "ci-vm-datadisk-${count.index}"
  location             = var.location
  resource_group_name  = var.resoucegp
  storage_account_type = "Standard_LRS"
  create_option        = "Empty"
  disk_size_gb         = 10
}

resource "azurerm_virtual_machine_data_disk_attachment" "ci-vm-0 {
  managed_disk_id    = azurerm_managed_disk.example.id
  virtual_machine_id = data.azurerm_virtual_machine.ci-vm-0.id
  lun                = "10"
  caching            = "ReadWrite"
}
resource "azurerm_virtual_machine_data_disk_attachment" "ci-vm-1 {
  managed_disk_id    = azurerm_managed_disk.example.id
  virtual_machine_id = data.azurerm_virtual_machine.ci-vm-1.id
  lun                = "10"
  caching            = "ReadWrite"
}
resource "azurerm_virtual_machine_data_disk_attachment" "ci-vm-2 {
  managed_disk_id    = azurerm_managed_disk.example.id
  virtual_machine_id = data.azurerm_virtual_machine.ci-vm-2.id
  lun                = "10"
  caching            = "ReadWrite"
}
resource "azurerm_virtual_machine_data_disk_attachment" "ci-vm-3 {
  managed_disk_id    = azurerm_managed_disk.example.id
  virtual_machine_id = data.azurerm_virtual_machine.ci-vm-3.id
  lun                = "10"
  caching            = "ReadWrite"
}