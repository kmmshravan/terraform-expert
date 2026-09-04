module "rg-create" {
  source              = "./modules/resource-group"
  resource_group_name = var.resource_group_name
  location            = var.location

  tags = {
    Environment = var.environment
    location    = var.location
    Managedby   = "rootmodule"
  }
}

module "monitoring-rg" {
  source              = "./modules/resource-group"
  resource_group_name = "rg-monitoring-day6"
  location            = "canadacentral"

  tags = {
    managedby = "monitoringrg"
  }
}

module "storage-account" {
  source              = "./modules/storage-account"
  name                = var.storage-name
  resource_group_name = module.rg-create.resoure_group_name
  location            = module.rg-create.resource_group_location
  account-tier        = var.account-tier
  account-replication = var.account-replication

}

