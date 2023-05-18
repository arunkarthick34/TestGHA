# terraform {
#   cloud {
#     organization = "university-college-london"

#     workspaces {
#       name = "TestGHA"
#     }
#   }
# }

# terraform {
#   required_providers {
#     azurerm = {
#       source  = "hashicorp/azurerm"
#       version =   "3.56.0"
#     }
#   }
# }

terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 3.56.0"
    }
  }
  cloud {}
}

provider "azurerm" {
  features {}
  skip_provider_registration = true
}


# provider "azurerm" {
#         # use_cli = true
#     features {}
# }

resource "azurerm_resource_group" "testgha" {
      name     = var.rg
  location = "uk south"
  tags = {
    Environment = var.environment
  }
}


