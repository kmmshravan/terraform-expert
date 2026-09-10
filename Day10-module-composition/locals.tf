locals {
  common_tags = {
    Environment = var.environment
    Managedby   = "Terraform"
    Project     = "payments"
  }
  account_tier             = contains(["dev", "qa"], var.environment) ? "Standard" : "Premium"
  account_replication_type = var.environment == "dev" ? "LRS" : "ZRS"
  storage_account_name     = lower(replace("test-${var.environment}-${local.common_tags.Project}", "-", ""))
}
