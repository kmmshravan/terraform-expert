variable "application_name" {
  type = string
}
variable "environment" {
  type = string
  validation {
    condition = contains(["dev", "qa", "prod"], var.environment)
    error_message = "Environment must be dev, qa or prod"
  }
}
variable "location" {
  type = string
  validation {
    condition = contains(["canadacentral"], var.location)
    error_message = "location must be canadacentral"
  }
}