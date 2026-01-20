# acr

resource "azurerm_container_registry" "acr_store" {
  name                  = var.acrname
  resource_group_name   = var.rgname
  location              = var.rglocation
  sku                   = var.acrsku
}

