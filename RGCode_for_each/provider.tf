terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.47.0"
    }
  }
  backend "azurerm" {
    resource_group_name = "dptest-rg"
    storage_account_name = "dpstg"
    container_name = "dpcontainer"
    key = "dp.tfstates"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "dc1b0d18-b7a7-4981-90c1-5f01ea6fc258"
}