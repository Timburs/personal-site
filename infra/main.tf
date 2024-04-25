# TODO : Import the storage account to state if possible from Free Trial subscription
# TODO : Create CI process to push to $web container
# TODO : When deploying, ensure that CSS and JS files have the proper content type on Azure


terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~> 3.100.0"
    }
  }
  backend "azurerm" {
    resource_group_name   = "rg-site-prod"
    storage_account_name  = "stpersonalsite"
    container_name        = "tfstate"
    key                   = "terraform.tfstate"
  }
}

provider "azurerm" {
  # Configuration options
  features {}
}