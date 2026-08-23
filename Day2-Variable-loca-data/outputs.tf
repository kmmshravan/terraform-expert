output "resource_group_out" {
    value = azurerm_resource_group.mainrg.id
}

output "print_environment" {
    value = var.environment
}

output "storage_replication_type" {
    value = azurerm_storage_account.strg.account_replication_type
}

output "existing_rg" {
    value = data.azurerm_resource_group.existing22.name
}