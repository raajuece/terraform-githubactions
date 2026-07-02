locals {
  resource_name_prefix = "${var.business_unit}-${var.environment}"


  project_lucky_raja = {
    Project      = "Terraform"
    Environment  = var.environment
    BusinessUnit = var.business_unit
    costcenter   = "sap007"
  }
}
