variable "storage_account_name" {}
variable "resource_group_name" {}
variable "location" {}


resource "azurerm_storage_account" "stg" {
    name                     = var.storage_account_name
    resource_group_name      = var.resource_group_name
    location                 = var.location
    account_tier             = "Standard"
    account_replication_type = "LRS"
}

output "dp_id" {
    value = azurerm_storage_account.stg.id
}