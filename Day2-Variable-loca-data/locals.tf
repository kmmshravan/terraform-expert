locals {
  resource_prefix     = "${var.project_name}-${var.environment}"
  resource_group_name = "rg-${local.resource_prefix}"

  common_tags = merge(
    var.tags,
    {
      created_by = "Terraform"
    }
  )
  storage_replication_type = var.environment == "prod" ? "GRS" : "LRS"
}