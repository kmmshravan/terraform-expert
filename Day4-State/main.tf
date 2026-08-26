resource "azurerm_resource_group" "rgstate" {
  name     = var.resource_group
  location = var.location

  tags = {
    Managedby = "Terraform"
    Lab       = "Day4"
  }
}

resource "azurerm_resource_group" "imported" {
  name = "rg-terraform-day4-import"
  location = "eastus"
}