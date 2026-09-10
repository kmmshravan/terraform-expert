module "networking" {
  source              = "../networking"
  resource_group_name = var.resource_group_name
  vnet_name           = var.vnet_name
  location            = var.location
  address_space       = var.address_space
  tags                = var.tags
}

module "key-vault" {
  source              = "../key-vault"
  resource_group_name = var.resource_group_name
  location            = var.location
  name                = var.key_vault_name
  tags                = var.tags

}

module "storage" {
  source                   = "../storage"
  location                 = var.location
  account_replication_type = var.account_replication_type
  account_tier             = var.account_tier
  storage_account_name     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  tags                     = var.tags
}