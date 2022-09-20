data "azurerm_virtual_machine" "ci1" {
  count= 4 
  index =   "${count.index}"
  filter  {
    name = "ci"
  }
  #name               = ["ci-vm-0", "ci-vm-1", "ci-vm-2", "ci-vm-3"]
  #name1               = "ci-vm-1"
  #name2               = "ci-vm-2"
  #name3               = "ci-vm-3"
  resource_group_name = var.resoucegp
}

output "virtual_machine_id" {
  value = data.azurerm_virtual_machine.ci1.*.id
}

#data "azurerm_virtual_machine" "ci2" {
 # name           = "ci-vm-1"
  #resource_group_name = var.resoucegp
#}

#output "virtual_machine_id-1" {
 # value = data.azurerm_virtual_machine.ci2.id
#}

#data "azurerm_virtual_machine" "ci3" {
 # name              = "ci-vm-2"
  #resource_group_name = var.resoucegp
#}

#output "virtual_machine_id-2" {
 # value = data.azurerm_virtual_machine.ci3.id
#}

#data "azurerm_virtual_machine" "ci4" {
 # name               = "ci-vm-3"
  #resource_group_name = var.resoucegp
#}

#output "virtual_machine_id-3" {
 # value = data.azurerm_virtual_machine.ci4.id
#}