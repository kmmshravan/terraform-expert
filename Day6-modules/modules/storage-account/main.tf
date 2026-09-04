resource "azurerm_storage_account" "storage-account"{
    location = var.location
    name = var.name
    resource_group_name = var.resource_group_name
    account_tier = var.account-tier
    account_replication_type = var.account-replication

}