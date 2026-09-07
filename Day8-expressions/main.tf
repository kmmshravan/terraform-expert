variable "app_settings" {
  type = map(any)
  default = {
    instance_type = "t3.small"
  }
}

resource "azurerm_resource_group" "vnetrg" {
  name     = "rg-vnet-${var.environment}"
  location = var.location

  tags = local.common_tags
}

resource "azurerm_virtual_network" "appvnet" {
  name                = var.vnet_name
  location            = var.location
  resource_group_name = azurerm_resource_group.vnetrg.name
  address_space       = var.address_space
  tags                = local.final_tags
}

resource "azurerm_subnet" "appsubnet" {
  for_each = var.subnets

  name                 = each.key
  resource_group_name  = azurerm_resource_group.vnetrg.name
  virtual_network_name = azurerm_virtual_network.appvnet.name
  address_prefixes     = [each.value.address_prefix]
}