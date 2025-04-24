provider "azurerm" {
  features {}
}

module "resource_group" {
  source      = "./modules/resource_group"
  name        = var.resource_group_name
  location    = var.location
}

module "app_service_plan" {
  source              = "./modules/app_service_plan"
  name                = var.app_service_plan_name
  location            = module.resource_group.location
  resource_group_name = module.resource_group.name
  sku                 = var.app_service_plan_sku
}

module "app_service" {
  source              = "./modules/app_service"
  name                = var.web_app_name
  location            = module.resource_group.location
  resource_group_name = module.resource_group.name
  app_service_plan_id = module.app_service_plan.id
  docker_image        = var.docker_image
}