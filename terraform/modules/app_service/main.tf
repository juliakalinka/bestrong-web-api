resource "azurerm_linux_web_app" "web-app" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  service_plan_id     = var.app_service_plan_id

  site_config {
    application_stack {
      docker_image     = split(":", var.docker_image)[0]
      docker_image_tag = split(":", var.docker_image)[1]
    }
  }
}