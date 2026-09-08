environment = "dev"
location    = "canadacentral"
network = {
  vnet_name     = "vnet-payments-dev"
  address_space = ["10.10.0.0/16"]

  subnets = {
    web = {
      address_prefix = "10.10.1.0/24"
      nsg_name       = "nsg-web"
      route_table    = "rt-web"
    }
    app = {
      address_prefix = "10.10.2.0/24"
      nsg_name       = "nsg-app"
      route_table    = "rt-app"
    }
    data = {
      address_prefix = "10.10.3.0/24"
      nsg_name       = "nsg-data"
      route_table    = "rt-data"
    }
  }
}
nsg_rule = {
  web_http = {
    subnet                     = "web"
    name                       = "allowhttp"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "80"
    source_address_prefix      = "*"
    destination_address_prefix = "*"

  }
  web_https = {
    subnet                     = "web"
    name                       = "allow-https"
    priority                   = 110
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "443"
    source_address_prefix      = "*"
    destination_address_prefix = "*"


  }

}