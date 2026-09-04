output "rgs-name" {
  value = module.rg-create.resoure_group_name
}

output "rg-location" {
  value = module.rg-create.resource_group_location
}

output "from-module" {
  value = module.monitoring-rg.resource_group_location
}