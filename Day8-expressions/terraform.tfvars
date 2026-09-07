environment   = "dev"
location      = "eastus2"
vnet_name     = "vnet-payments-dev"
address_space = ["10.0.0.0/16"]

subnets = {
  app = {
    address_prefix = "10.0.1.0/24"
  }
  web = {
    address_prefix = "10.0.2.0/24"
  }
  data = {
    address_prefix = "10.0.3.0/24"
  }
  management = {
    address_prefix = "10.0.4.0/24"
  }
}
