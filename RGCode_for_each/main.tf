resource "azurerm_resource_group" "RG" {
  for_each   = var.rgs
  name       = each.value.name
  location   = each.value.location
  managed_by = each.value.managed_by
  tags       = each.value.tags
  }

  output "dp" {
    value = azurerm_resource_group.RG["rg1"].id
  }

  output "dp2" {
    value = {for key, rg in azurerm_resource_group.RG : key => rg.id}
  }