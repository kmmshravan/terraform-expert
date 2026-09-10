resource "azurerm_resource_group" "rg1" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_virtual_network" "vnet1" {
  name                = var.vnet_name
  location            = azurerm_resource_group.rg1.location
  resource_group_name = azurerm_resource_group.rg1.name

  address_space = var.address_space

  tags = var.tags
}
