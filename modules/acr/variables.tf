variable "rgname" {
  type        = string
  default     = "hcrg"
  description = "Resource group name"
}

variable "rglocation" {
  type        = string
  default     = "eastus"
  description = "resource group location"
}


variable "acrname" {
  type        = string
  description = "acr name"
}

variable "acrsku" {
  type        = string
  description = "acr sku"
  default = "Standard"
}





# variable "depends_on" {
#     type = string
#     description = "dependency"
#     default = "[ azurerm_kubernetes_cluster.akscluster ]"
# }