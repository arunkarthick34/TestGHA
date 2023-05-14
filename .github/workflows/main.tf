resource "azurerm_resource_group" "testgha" {
  name     = var.name
  location = location
  tags     = {
    Environment = var.enviroment
  }
}
