  terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.1.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "tfstate_rg_rajadurai" #change as per the storage account 
    storage_account_name = "sarajadurai" #change the storage account name 
    container_name       = "tfstatefolder" #if other than tfstate you have define change it
    key                  = "terraform-module-project.tfstate" #this will store the state file with this naming convetion
  }
}

  provider "azurerm" {
  #resource_provider_registrations = "none" # This is only required when the User, Service Principal, or Identity running Terraform lacks the permissions to register Azure Resource Providers.
  subscription_id = "73cbb2ca-6092-4ae4-9e58-362b625a3b20" # Replace with your Azure subscription ID
  features {}
}