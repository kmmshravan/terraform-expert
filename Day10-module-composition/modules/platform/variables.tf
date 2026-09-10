variable "environment" {
  type = string
}
variable "location" {
  type = string
}
variable "resource_group_name" {
  type = string
}
variable "vnet_name" {
  type = string
}
variable "address_space" {
  type = list(string)
}
variable "key_vault_name" {
  type = string
}
variable "tags" {
  type = map(string)
}
variable "storage_account_name" {
  type = string
}
variable "account_replication_type" {
  type = string
}
variable "account_tier" {
  type = string
}