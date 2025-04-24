resource "azurerm_app_service_plan" "app-service-plan" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  sku {
    tier = "Basic"
    size = var.sku
  }
  reserved = true
}