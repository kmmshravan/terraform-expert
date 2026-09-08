locals {
  common_tags = {
    Environment = var.environment
    Managedby   = "Terraform"
    Project     = "Payments"
  }
}