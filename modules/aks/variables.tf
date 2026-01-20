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

variable "subnetid" {
  type        = string
  description = "subnet id"
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

variable "role_definition_name" {
    type = string
    description = "role definition name"
    default = "acrpull"
}

variable "aksid" {
    type = string
    description = "aks object id"

}
variable "rgid" {
    type = string
    description = "resource group id"
}
