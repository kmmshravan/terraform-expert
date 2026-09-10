resource "azurerm_key_vault" "kv1" {
  resource_group_name        = var.resource_group_name
  name                       = var.name
  location                   = var.location
  tenant_id                  = data.azurerm_client_config.current.tenant_id
  sku_name                   = "standard"
  purge_protection_enabled   = false
  tags                       = var.tags
  rbac_authorization_enabled = false
}

data "azurerm_client_config" "current" {}