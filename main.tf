terraform {
  cloud {
    organization = "Five9hot"

    workspaces {
      name = "gha_dev"
    }
  }
}

resource "azurerm_resource_group" "testgha" {
      name     = var.rg
    location = location
  tags     = {
    Environment = var.environment
  }
}


