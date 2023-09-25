output "resource_group" {
  description = "Resource group"
  value       = azurerm_resource_group.create_resource_group
}

output "resource_group_id" {
  description = "Resource group ID"
  value       = azurerm_resource_group.create_resource_group.id
}

output "resource_group_name" {
  description = "Resource group name"
  value       = azurerm_resource_group.create_resource_group.name
}
