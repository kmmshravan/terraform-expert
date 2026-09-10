output "vnet_id" {
  value = module.networking.vnet_id
}
output "vnet_name" {
  value = module.networking.vnet_name
}
output "key_vault_id" {
  value = module.key-vault.id
}
output "key_vault_name" {
  value = module.key-vault.name
}
output "storage_account" {
  value = module.storage.azurerm_storage_account_name
}