resource "azurerm_resource_group" "staterg" {
  name     = var.resource_group_name
  location = var.location
}