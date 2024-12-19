output "ip_group_id" {
  value = { for k, ipg in azurerm_ip_group.this : k => ipg.id }
}