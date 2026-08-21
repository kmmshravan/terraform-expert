variable "resource_group_name" {
  description = "name of the resoeruce group"
  default     = "testrg"
  type        = string
}
variable "resource_location" {
  description = "RG location"
  default     = "canadacentral"
  type        = string
}

variable "tags" {
  type = map(string)

  default = {
    managedby = "Terraform"
  }


}

variable "storage_account_name" {
  type    = string
  default = "exprtstrg1"
}