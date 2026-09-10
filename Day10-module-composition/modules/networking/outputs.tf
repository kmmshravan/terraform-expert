output "resource_group_name" {
  value = azurerm_resource_group.rg1.name
}

output "vnet_id" {
  value = azurerm_virtual_network.vnet1.id
}

output "vnet_name" {
  value = azurerm_virtual_network.vnet1.name
}