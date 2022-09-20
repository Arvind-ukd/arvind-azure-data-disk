resource "azurerm_managed_disk" "example" {
  count                = 4
  name                 = "ci-vm-datadisk-${count.index}"
  location             = var.location
  resource_group_name  = var.resoucegp
  storage_account_type = "Standard_LRS"
  create_option        = "Empty"
  disk_size_gb         = 10
}

resource "azurerm_virtual_machine_data_disk_attachment" "central" {
  managed_disk_id    = azurerm_managed_disk.example.[count.index].id
  virtual_machine_id = data.azurerm_virtual_machine.ci1.id
  lun                = "10"
  caching            = "ReadWrite"
}
resource "azurerm_virtual_machine_data_disk_attachment" "central1" {
  managed_disk_id    = azurerm_managed_disk.example.[count.index].id
  virtual_machine_id = data.azurerm_virtual_machine.ci2.id
  lun                = "10"
  caching            = "ReadWrite"
}
resource "azurerm_virtual_machine_data_disk_attachment" "central2" {
  managed_disk_id    = azurerm_managed_disk.example.[count.index].id
  virtual_machine_id = data.azurerm_virtual_machine.ci3.id
  lun                = "10"
  caching            = "ReadWrite"
}
resource "azurerm_virtual_machine_data_disk_attachment" "central3" {
  managed_disk_id    = azurerm_managed_disk.example.[count.index].id
  virtual_machine_id = data.azurerm_virtual_machine.ci4.id
  lun                = "10"
  caching            = "ReadWrite"
}