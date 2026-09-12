resource "azurerm_resource_group" "rg2" {
  location = var.location
  name     = var.resource_group_name

  tags = {
    Environment = "var.environment"
    Managedby   = "Terraform"
    Day         = "11"

  }
}

resource "azurerm_resource_group" "import" {
    name = "rg-terraform-day4-import"
    location = "eastus"
}

resource "azurerm_resource_group" "new" {
    name = "rg-day11-moved"
    location = "canadacentral"
}
moved {
    from = azurerm_resource_group.old
    to = azurerm_resource_group.new
}