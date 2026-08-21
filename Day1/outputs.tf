output "rg_name" {
  description = "name of the resoruce group"
  value       = azurerm_resource_group.test_rg.name
}

output "storage_account_name" {
    description = "name of the storage account"
    value = azurerm_storage_account.test_sa.name
}