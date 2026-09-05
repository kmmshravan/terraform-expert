terraform {
    backend "azurerm" {
        resource_group_name = "day6-rg"
        storage_account_name = "tfday6tfstate"
        container_name = "tf2state"
        key = "dev/terraform.tfstate"


        }
}
