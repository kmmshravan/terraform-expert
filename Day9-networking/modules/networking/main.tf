resource "azurerm_virtual_network" "vent" {
  name                = var.network.vnet_name
  location            = var.location
  resource_group_name = var.resource_group_name
  tags                = var.tags
  address_space = var.network.address_space
}

resource "azurerm_subnet" "subnet" {
  for_each             = var.network.subnets
  name                 = each.key
  resource_group_name  = azurerm_virtual_network.vent.resource_group_name
  virtual_network_name = azurerm_virtual_network.vent.name

  address_prefixes = [each.value.address_prefix]
}

resource "azurerm_network_security_group" "nsg" {
  for_each            = var.network.subnets
  name                = each.value.nsg_name
  location            = azurerm_virtual_network.vent.location
  resource_group_name = azurerm_virtual_network.vent.resource_group_name
  tags                = var.tags
}

resource "azurerm_network_security_rule" "nsgrule" {
  for_each                    = var.nsg_rule
  name                        = each.value.name
  resource_group_name         = azurerm_virtual_network.vent.resource_group_name
  priority                    = each.value.priority
  direction                   = each.value.direction
  access                      = each.value.access
  protocol                    = each.value.protocol
  source_port_range           = each.value.source_port_range
  destination_port_range      = each.value.destination_port_range
  source_address_prefix       = each.value.source_address_prefix
  destination_address_prefix  = each.value.destination_address_prefix
  network_security_group_name = azurerm_network_security_group.nsg[each.value.subnet].name

}

resource "azurerm_subnet_network_security_group_association" "nsg-astn" {
  for_each = var.network.subnets
  subnet_id = azurerm_subnet.subnet[each.key].id
  network_security_group_id = azurerm_network_security_group.nsg[each.key].id
}

resource "azurerm_route_table" "rt" {
  for_each = var.network.subnets
  name = each.value.route_table
  location = var.location
  resource_group_name = azurerm_virtual_network.vent.resource_group_name

}

resource "azurerm_subnet_route_table_association" "rtastn" {
  for_each = var.network.subnets
  subnet_id = azurerm_subnet.subnet[each.key].id
  route_table_id = azurerm_route_table.rt[each.key].id
}
