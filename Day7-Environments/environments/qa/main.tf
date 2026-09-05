locals {
    name_prefix = "app-${var.application_name}-${var.environment}"
}

module "qaenv-rg" {
  source   = "../../modules/resource-group"
  name     = "rg-${local.name_prefix}"
  location = var.location
  tags = {
    managedby = "qaenv"
    environment = var.environment
    application_name = var.application_name

  }
}