variable "resource_group_name" {
    description = "The name of the resource group"
    type        = string
}

variable "location" {
    description = "The location of the resource group"
    type        = string
  
}


resource "azurerm_resource_group" "rg" {
    name     = var.resource_group_name
    location = var.location
}

output "rg_name" {
    value = azurerm_resource_group.rg.name
}

output "rg_location" {
  value =   azurerm_resource_group.rg.location
}
