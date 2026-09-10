module "platform" {
  source                   = "./modules/platform"
  environment              = var.environment
  location                 = var.location
  resource_group_name      = "rg-payments-${var.environment}"
  vnet_name                = "vnet-payments-${var.environment}"
  address_space            = ["10.20.0.0/24"]
  key_vault_name           = "kv-payments-${var.environment}"
  tags                     = local.common_tags
  account_replication_type = local.account_replication_type
  account_tier             = local.account_tier
  storage_account_name     = local.storage_account_name
}