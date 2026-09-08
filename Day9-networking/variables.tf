variable "environment" {
  description = "deployment environment"
  type        = string

  validation {
    condition     = contains(["dev", "qa", "prod"], var.environment)
    error_message = "only accepted values are dev, qa and prod"
  }
}

variable "location" {
  description = "provide location for resources"
  type        = string
}

variable "network" {
  description = "network configuration"

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