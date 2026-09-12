variable "environment" {
  type = string
  validation {
    condition     = contains(["dev", "qa", "prod"], var.environment)
    error_message = "Value must be dev, qa or prod"
  }
}
variable "location" {
  type = string
}
variable "resource_group_name" {
  type = string
}