terraform {
  cloud {
    organization = "university-college-london"

    workspaces {
      name = "TestGHA"
    }
  }
}

provider "azurerm" {
  use_cli = true
  features {}
}

resource "azurerm_resource_group" "testgha" {
      name     = var.rg
    location = "uk south"
  tags     = {
    Environment = var.environment
  }
}


