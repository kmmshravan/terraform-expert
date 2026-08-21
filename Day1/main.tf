resource "azurerm_resource_group" "test_rg" {
  name     = var.resource_group_name
  location = var.resource_location

  tags = var.tags
}

resource "azurerm_storage_account" "test_sa" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.test_rg.name
  location                 = azurerm_resource_group.test_rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  tags                     = var.tags

}