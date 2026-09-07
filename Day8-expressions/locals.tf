locals {
  common_tags = {
    Environment = var.environment
    Managedby   = "Terraform"
    Project     = "Day8"
  }

  subnet_name = [
    for name, subnet in var.subnets : name
  ]

  application_subnets = [
    for name, vnet in var.subnets : vnet
    if name != "management"
  ]

  sku = var.environment == "prod" ? "Premium" : "Standard"

  sku2 = lookup(var.environment_sku, var.environment, "Nothing")


  subnet_description = try(var.subnet_description, "Default Subnet")

  try_var = try(var.app_settings.environment, "development")

  regular_tags = {
    Managedby = "Terrarom"
    Project = "payments"
  }

  environment_tags = {
    environment = var.environment

  
  }

  final_tags = merge(local.regular_tags, local.environment_tags)

}

