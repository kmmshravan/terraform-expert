resource "azurerm_resource_group" "modrg1" {
  name     = var.resource_group_name
  location = var.location
  tags     = var.tags

}