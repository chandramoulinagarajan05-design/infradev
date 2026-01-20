output "aks_cluster_object_id" {
  value = azurerm_kubernetes_cluster.akscluster.kubelet_identity[0].object_id
}