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
variable "sqlname"{
    type = string
    description = "mssql server name"
}

variable "sqlversion" {
    type = string
    description = " sql version"
}

variable "envn" {
    type = string
    description = "Environment"
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