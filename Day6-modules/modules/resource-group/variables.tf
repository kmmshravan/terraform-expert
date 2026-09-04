variable "resource_group_name" {
  type = string

}

variable "location" {
  type        = string
  description = "location where to create the RG"
}

variable "tags" {
  type        = map(string)
  description = "Tags to identify the RG"
  default = {
    managedby = "terraform"
    ownedby   = "shravan"

  }

}