resource "azurerm_resource_group" "day3rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  location            = azurerm_resource_group.day3rg.location
  resource_group_name = azurerm_resource_group.day3rg.name
  address_space       = var.address_space

}

resource "azurerm_subnet" "app" {
  name                 = var.subnet_name
  resource_group_name  = azurerm_resource_group.day3rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.subnet_prefixes

}


resource "azurerm_storage_account" "strg1" {
  count = 3
  name  = "stterday3${count.index}"

  resource_group_name      = azurerm_resource_group.day3rg.name
  location                 = azurerm_resource_group.day3rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

}

resource "azurerm_storage_account" "strg2" {
  for_each = var.storage_accounts
  name = "strday3${each.key}23"
  resource_group_name = azurerm_resource_group.day3rg.name
  location = azurerm_resource_group.day3rg.location
  account_tier = "Standard"
  account_replication_type = each.value
}

resource "azurerm_subnet" "subnets" {
  for_each = var.subnets

  name = "snet-${each.key}"
  resource_group_name = azurerm_resource_group.day3rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name

  address_prefixes = [
    each.value.address_prefix
  ]
}