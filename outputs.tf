output "ip_group" {
  value = { for k, ipg in azurerm_ip_group.this : k => ipg.id }
}