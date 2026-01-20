# vnet

resource "azurerm_virtual_network" "aks_vnet" {
  name                = var.vnetname
  location            = var.rglocation
  resource_group_name = var.rgname
  address_space       = ["10.1.0.0/16"]
  }

# subnet

resource "azurerm_subnet" "aks_subnet" {
  name                 = var.subnetname
  resource_group_name  = var.rgname
  virtual_network_name = azurerm_virtual_network.aks_vnet.name
  address_prefixes     = ["10.1.1.0/24"]
}