variable "environment" {
  description = "environment type"
  default     = "dev"
  type        = string

  validation {
    condition     = contains(["dev", "qa", "prod"], var.environment)
    error_message = "environment must be dev, qa or prod"
  }
}

variable "project_name" {
  description = "provide project name"
  type        = string
}

variable "instance_count" {
  type        = number
  description = "provide required number of instanes"
  default     = 2
}

variable "enable_monitoring" {
  description = "enable monitoring"
  type        = bool
  default     = false
}

variable "allowed_locations" {
  description = "locaiton for resources"
  type        = list(string)
  default     = ["eastus2", "canadacentral"]
}

variable "allowed_instance" {
  description = "list example"
  type        = list(string)
  default     = ["ex1", "exp2"]
}

variable "tags" {
  description = "provide tag names"
  type        = map(string)
}

#object example

variable "network_config" {
  description = "network configuration"
  type = object({
    vnet_name     = string
    address_space = list(string)
  })
  default = ({
    vnet_name     = "test_vent"
    address_space = ["10.10.0.0/16"]
  })
}