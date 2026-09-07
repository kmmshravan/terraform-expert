variable "environment" {
  type        = string
  description = "provide environment name"

  validation {
    condition     = contains(["dev", "qa", "prod"], var.environment)
    error_message = "provide proper environment name"
  }
}

variable "location" {
  type = string
}

variable "vnet_name" {
  type = string
}

variable "address_space" {
  type = list(string)
}

variable "subnets" {
  description = "subnet configuration"
  type = map(object({
    address_prefix = string
  }))

}

variable "environment_sku" {
  type = map(string)

  default = {
    dev = "Standard"
    qa = "Standard"
    prod = "Premium"
  }
}

variable "subnet_description" {
  type = string
  default = "testing"
}


