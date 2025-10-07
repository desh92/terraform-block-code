resource "azurerm_resource_group" "rg" {
  for_each = var.resource_groups
    name     = each.value.name
    location = each.value.location
}

resource "azurerm_virtual_network" "vnet" {
    depends_on = [ azurerm_resource_group.rg ]
    for_each = var.vnets
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  address_space       = each.value.address_space
  dns_servers         = each.value.dns_servers

  dynamic "subnet" {
    for_each = var.subnets
    content {
      name = subnet.key
      address_prefixes = subnet.value
    }
  }
}

