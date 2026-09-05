resource "azurerm_resource_group" "envtf" {
    name = var.name
    location = var.location
    tags = var.tags
  
}