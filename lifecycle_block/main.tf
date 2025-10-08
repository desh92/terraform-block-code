# resource "azurerm_resource_group" "rg" {
#   name = "chintu-rg"
#   location = "centralindia"
# }

resource "azurerm_resource_group" "rg" {
  name = "chintu-rg1"
  location = "centralindia"

lifecycle {
  create_before_destroy = true
  prevent_destroy = true
  ignore_changes = [ name ]
}

}