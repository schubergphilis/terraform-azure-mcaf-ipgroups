resource "azurerm_resource_group" "this" {
  count    = var.create_ipg_resource_group ? 1 : 0
  name     = var.resource_group.name
  location = var.resource_group.location
  tags = merge(
    try(var.tags),
    tomap({
      "Resource Type" = "Resource Group"
    })
  )
}

resource "azurerm_ip_group" "this" {
  for_each = var.ipgroups

  name                = var.ipgroups[each.key].name
  location            = var.resource_group.location
  resource_group_name = var.resource_group.name
  cidrs               = var.ipgroups[each.key].cidrs

  tags = merge(
    try(var.tags),
    tomap({
      "Resource Type" = "IP Group"
    })
  )
}
