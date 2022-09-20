data "azurerm_virtual_machine" "ci-vm-0" {
  name                = "production"
  resource_group_name = var.resoucegp
}

output "virtual_machine_id" {
  value = data.azurerm_virtual_machine.ci-vm-0.id
}

data "azurerm_virtual_machine" "ci-vm-1" {
  name                = "production"
  resource_group_name = var.resoucegp
}

output "virtual_machine_id" {
  value = data.azurerm_virtual_machine.ci-vm-1.id
}

data "azurerm_virtual_machine" "ci-vm-2" {
  name                = "production"
  resource_group_name = var.resoucegp
}

output "virtual_machine_id" {
  value = data.azurerm_virtual_machine.ci-vm-2.id
}

data "azurerm_virtual_machine" "ci-vm-3" {
  name                = "production"
  resource_group_name = var.resoucegp
}

output "virtual_machine_id" {
  value = data.azurerm_virtual_machine.ci-vm-3.id
}