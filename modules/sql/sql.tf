# azure sql server

resource "azurerm_mssql_server" "sql" {
  name                         = var.sqlname
  resource_group_name          = var.rgname
  location                     = var.rglocation
  version                      = var.sqlversion
  administrator_login          = var.administrator_login
  administrator_login_password = var.administrator_login_password
    tags = {
    environment = var.envn
  }
}

resource "azurerm_mssql_database" "sqldb" {
  name           = var.dbname
  server_id      = azurerm_mssql_server.sql.id
  

  tags = {
    environment = var.envn
  }
}