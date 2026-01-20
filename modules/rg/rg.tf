#Resource group
resource "azurerm_resource_group" "aks_rg" {
  name     = var.rgname
  location = var.rglocation
}