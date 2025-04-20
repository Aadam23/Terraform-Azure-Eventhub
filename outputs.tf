output "resource_group_name" {
  value = azurerm_resource_group.eventhub_rg.name
}

output "eventhub_namespace_name" {
  value = azurerm_eventhub_namespace.demo_namespace.name
}

output "eventhub_name" {
  value = azurerm_eventhub.demo_hub.name
}

output "eventhub_primary_connection_string" {
  value     = azurerm_eventhub_namespace.demo_namespace.default_primary_connection_string
  sensitive = true
}
