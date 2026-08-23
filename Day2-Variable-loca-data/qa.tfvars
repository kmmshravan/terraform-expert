environment  = "qa"
project_name = "terraformlab-qa"

instance_count = 2

enable_monitoring = true

tags = {
  Environment = "qa"
  Project     = "Terraform learning"
  Managedby   = "Devops"
}

network_config = {
  vnet_name = "vnet-terraform-labqa"
  address_space = [
    "10.20.0.0/16"
  ]
}

