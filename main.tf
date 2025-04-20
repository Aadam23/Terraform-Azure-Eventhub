provider "azurerm" {
  features {}

  subscription_id = "your-subcription-id"
  resource_provider_registrations = "none"
}

resource "azurerm_resource_group" "eventhub_rg" {
  name = "eventhub-demo-rg"
  location = "East Us"
}

resource "azurerm_eventhub_namespace" "demo_namespace" {
  name = "eventhubdemons${random_integer.rand.result}"
  location = azurerm_resource_group.eventhub_rg.location
  resource_group_name = azurerm_resource_group.eventhub_rg.name
  sku = "Basic"
  capacity = 1
}

resource "azurerm_eventhub" "demo_hub" {
  name = "demo_eventhub"
  namespace_name = azurerm_eventhub_namespace.demo_namespace.name
  resource_group_name = azurerm_resource_group.eventhub_rg.name
  partition_count = 2
  message_retention = 1
}

resource "random_integer" "rand" {
  min = 10000
  max = 99999
}
