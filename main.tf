resource "azurerm_resource_group" "this" {
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
  for_each            = var.ipgroups
  name                = var.ipgroups.name
  location            = var.resource_group.location
  resource_group_name = azurerm_resource_group.this.name

  cidrs = var.ipgroups.cidrs

  tags = merge(
    try(var.tags),
    tomap({
      "Resource Type" = "IP Group"
    })
  )
}
