module "env-rg" {
    source = "../../modules/resource-group"
    name = "rg-${var.application_name}-${var.environment}"
    location = var.location

    tags = {
        developedby = "terraform"
        managedby = "me"
    }


}