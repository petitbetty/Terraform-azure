terraform {
  required_providers {
    azurerm = {
        source  = "hashicorp/azurerm"
        version = "=3.0.0"
    }
  }
  backend "azurerm" {
    resource_group_name     = "rg-terraform-state-001-betty"
    storage_account_name    = "cloudterraformstate"
    container_name          = "tfstate"
    key                     = "GitHub-Terraform-rg-connectivity-001-betty"
  }
}
provider "azurerm" {
  features {}
}
