resource_group_name = "rg-terraform-day3-dev"

location = "canadacentral"

vnet_name = "vnet-terraform-day3-dev"

address_space = [
  "10.0.0.0/16"
]

subnet_name = "snet-app"

subnet_prefixes = [
  "10.0.0.0/24"
]

storage_accounts = {
  logs = "LRS"
  backup = "GRS"
  archive = "ZRS"
}

subnets = {
  app = {
    address_prefix = "10.10.1.0/24"
  }
  web = {
    address_prefix = "10.10.2.0/24"
  }
  data = {
    address_prefix = "10.10.3.0/24"
  }
}
