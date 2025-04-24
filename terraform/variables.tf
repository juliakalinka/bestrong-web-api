variable "resource_group_name" {}
variable "location" {}
variable "app_service_plan_name" {}
variable "app_service_plan_sku" {
  default = "B1"
}
variable "web_app_name" {}
variable "docker_image" {}