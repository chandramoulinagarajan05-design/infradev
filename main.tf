  terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.102.0"
    }
  }

  backend "azurerm" {
  resource_group_name = "Remotestorage"
  storage_account_name = "storageremote"
  container_name = "sfcontainer"
  key = "terraform.tfstate"
}

  }

 
provider "azurerm" {
  features {}
    client_id = "b2d5d072-ddf4-43e8-a567-f2a5bbb76371"
    client_secret = "YJ98Q~9NGoyKGbuGThQ7WtTEcTndnGmUnS4gudcs"
    subscription_id = "11dd5bec-a818-4c2a-9b37-cb565e458bf7"
    tenant_id = "6cbac5a9-820b-4292-ac89-9083a3c54189"
    skip_provider_registration = true
}

 

#resource group

module rg {
  source = "./modules/rg"
  rgname = var.rgname
  rglocation = var.rglocation

}


module network {
  source = "./modules/network"
  vnetname = var.vnetname
  subnetname = var.subnetname
  rgname = var.rgname
  rglocation = var.rglocation
  depends_on = [ 
    module.rg
    ]
}


module aks {
  source = "./modules/aks"
  vnetname = var.vnetname
  subnetid = module.network.subnetid
  rgname = var.rgname
  rglocation = var.rglocation
  envn = var.envn
  aksname = var.aksname
  aksdns = var.aksdns
  aksvmsize = var.aksvmsize
  aksnpvmsize = var.aksnpvmsize
  aksnpname = var.aksnpname
  aksnodedefault = var.aksnodedefault
  aksnpcount = var.aksnpcount
  role_definition_name = var.role_definition_name
  aksid = module.aks.aks_cluster_object_id
  rgid = module.rg.rgid
  depends_on = [
    module.network
  ]
}

module acr {
  source = "./modules/acr"
  rgname = var.rgname
  rglocation = var.rglocation
  acrname = var.acrname
  acrsku = var.acrsku
  
  depends_on = [
    module.aks
  ]

}

module sql {
  source = "./modules/sql"
  rgname = var.rgname
  rglocation = var.rglocation
  sqlname = var.sqlname
  sqlversion = var.sqlversion
  administrator_login = var.administrator_login
  administrator_login_password = var.administrator_login_password
  dbname = var.dbname
  envn = var.envn
  #server_id = module.sql.sql_server_id

  depends_on = [
    module.acr
  ]
}
