# aks cluster

resource "azurerm_kubernetes_cluster" "akscluster" {
  name                = var.aksname
  location            = var.rglocation
  resource_group_name = var.rgname
  dns_prefix          = var.aksdns

  default_node_pool {
    name       = "default"
    node_count = var.aksnodedefault
    vm_size    = var.aksvmsize
    vnet_subnet_id = var.subnetid
  }

  identity {
    type = "SystemAssigned"
  }
  
  tags = {
    Environment = var.envn
  }
}

# aks  cluster nodepool

resource "azurerm_kubernetes_cluster_node_pool" "aksnodepool" {
  name                  = var.aksnpname
  kubernetes_cluster_id = azurerm_kubernetes_cluster.akscluster.id
  vm_size               = var.aksnpvmsize
  node_count            = var.aksnpcount

  tags = {
    Environment = var.envn
  }
}


# aksacr permission

resource "azurerm_role_assignment" "acr_pull" {
  scope              = var.rgid
  role_definition_name = var.role_definition_name
  principal_id       = var.aksid
  # depends_on = var.depends_on
}