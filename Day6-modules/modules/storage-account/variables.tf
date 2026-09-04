variable "name" {
    type = string
    description = "storage account name"
}

variable "location" {
    type = string
    description = "location where to create the storage"
}

variable "resource_group_name" {
    type = string
}

variable "tags" {
    type = map(string)
    default = {}
}

variable "account-tier" {
    type = string
}

variable "account-replication" {
    type = string
}