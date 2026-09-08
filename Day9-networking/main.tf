module "resource_group" {
  source   = "./modules/resource-group"
  name     = "networkrg"
  location = var.location

}

module "vnet" {
  source              = "./modules/networking"
  resource_group_name = module.resource_group.resource_group
  location            = module.resource_group.location
  network             = var.network
  nsg_rule            = var.nsg_rule
  tags                = local.common_tags
}