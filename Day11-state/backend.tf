terraform {
  backend "azurerm" {
    resource_group_name  = "dbrg"
    container_name       = "tfstate"
    storage_account_name = "remstat11"
    key                  = "day11/dev/terraform.tfstate"

  }
}
