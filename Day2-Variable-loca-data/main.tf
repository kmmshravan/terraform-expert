resource "azurerm_resource_group" "mainrg" {
  name     = local.resource_group_name
  location = var.allowed_locations[0]
  tags     = local.common_tags
}

resource "azurerm_storage_account" "strg" {
    name = lower(
        replace(
            "st${var.project_name}${var.environment}675" ,
            "-",
            ""
        )
    )
    resource_group_name = azurerm_resource_group.mainrg.name
    location = azurerm_resource_group.mainrg.location
    account_replication_type = local.storage_replication_type
    account_tier = "Standard"
}