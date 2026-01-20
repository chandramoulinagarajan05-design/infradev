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

variable "vnetname" {
  type        = string
  description = "vnet name"
}

variable "subnetname" {
  type        = string
  description = "subnet name"
}

variable "envn" {
    type = string
    description = "Environment"

}
variable "aksname" {
  type        = string
  description = "aks name"
}

variable "aksdns" {
    type = string
    description = "dnsprefix"

}
variable "aksvmsize" {
    type = string
    description = "aksvmsize"
    default = "Standard_DS2_v2"

}
variable "aksnpvmsize" {
    type = string
    description = "aksnpvmsize"
    default = "Standard_DS2_v2"

}

variable "aksnpname" {
    type = string
    description = "aks np name"
    default = "Standard_DS2_v2"

}
variable "aksnodedefault" {
    type = number
    description = "aks node default count"
    default = 1
}

variable "aksnpcount" {
    type = number
    description = "aks np default count"
    default = 1
}

# variable "rgid" {
#     type = string
#     description = string
# }

variable "acrname" {
  type        = string
  description = "acr name"
}

variable "acrsku" {
  type        = string
  description = "acr sku"
  default = "Standard"
}


variable "role_definition_name" {
    type = string
    description = "role definition name"
    default = "acrpull"
}

# variable "aksid" {
#     type = string
#     description = "aks object id"

# }

# variable "depends_on" {
#     type = string
#     description = "dependency"
#     default = "[ azurerm_kubernetes_cluster.akscluster ]"
# }

variable "sqlname"{
    type = string
    description = "sql server name"
}

variable "sqlversion" {
    type = string
    description = " sql version"
}


variable "administrator_login" {
    type = string
    description = "username"

}
variable "administrator_login_password" {
    type = number
    description = "password"
    
}
variable "dbname" {
    type = string
    description = "dbname"
}
