data "azurerm_virtual_machine" "ci1" {
  name               = "ci-vm-0"
  resource_group_name = var.resoucegp
}

output "virtual_machine_id" {
  value = data.azurerm_virtual_machine.ci1.id
}

data "azurerm_virtual_machine" "ci2" {
  name1              = "ci-vm-1"
  resource_group_name = var.resoucegp
}

output "virtual_machine_id" {
  value = data.azurerm_virtual_machine.ci2.id
}

data "azurerm_virtual_machine" "ci3" {
  name2              = "ci-vm-2"
  resource_group_name = var.resoucegp
}

output "virtual_machine_id" {
  value = data.azurerm_virtual_machine.ci3.id
}

data "azurerm_virtual_machine" "ci4" {
  name3               = "ci-vm-3"
  resource_group_name = var.resoucegp
}

output "virtual_machine_id" {
  value = data.azurerm_virtual_machine.ci4.id
}