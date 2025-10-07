variable "storage_container_name" {}
variable "storage_account_id" {
  
}



resource "azurerm_storage_container" "stg_container" {
    name                  = var.storage_container_name
   storage_account_id = var.storage_account_id

}