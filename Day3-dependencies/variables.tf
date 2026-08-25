variable "resource_group_name" {
  type = string
}

variable "location" {
  type    = string
  default = "canadacentral"
}

variable "vnet_name" {
  type    = string
  default = "tfe-test"
}

variable "address_space" {
  type = list(string)

}
variable "subnet_name" {
  type = string

}
variable "subnet_prefixes" {
  type = list(string)
}

variable "storage_accounts" {
  type = map(string)
}

variable "subnets" {
  type = map(object({
    address_prefix = string
  })
  )
}
