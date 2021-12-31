terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.56.0"
 #     subscription_name = "jio-ipl"      
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}
