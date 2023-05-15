terraform {
  cloud {
    organization = "Five9hot"

    workspaces {
      name = "gha_dev"
    }
    features {}
  }
}

resource "azurerm_resource_group" "testgha" {
      name     = var.rg
    location = "uk south"
  tags     = {
    Environment = var.environment
  }
}


