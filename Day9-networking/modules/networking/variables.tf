variable "location" {
  type = string
}
variable "resource_group_name" {
  type = string
}
variable "network" {
  type = object({
    vnet_name     = string
    address_space = list(string)
    subnets = map(object({
      address_prefix = string
      nsg_name       = string
      route_table    = string
    }))
  })
}

variable "nsg_rule" {
  description = "network security group rules"

  type = map(object({
    subnet                     = string
    name                       = string
    priority                   = number
    direction                  = string
    access                     = string
    protocol                   = string
    source_port_range          = string
    destination_port_range     = string
    source_address_prefix      = string
    destination_address_prefix = string

  }))
}
variable "tags" {
  type = map(string)
}