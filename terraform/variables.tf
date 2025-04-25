variable "client_id" {
  description = "Azure Client ID for Service Principal"
  type        = string
  sensitive   = true
}

variable "client_secret" {
  description = "Azure Client Secret for Service Principal"
  type        = string
  sensitive   = true
}

variable "tenant_id" {
  description = "Azure Tenant ID"
  type        = string
}

variable "subscription_id" {
  description = "Azure Subscription ID"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "westeurope"
}

variable "resource_group_name" {
  description = "Resource group name"
  type        = string
  default     = "bestrong-app-rg"
}

variable "container_registry_name" {
  description = "Azure Container Registry name"
  type        = string
  default     = "bestrongacr1web"
}

variable "image_tag" {
  description = "Docker Image tag"
  type        = string
  default     = "latest"
}

variable "service_plan_name" {
  description = "App Service Plan"
  type        = string
  default     = "bestrong-asp"
}

variable "service_plan_sku" {
  description = "App Service plan SKU"
  type        = string
  default     = "B1"
}

variable "web_app_name" {
  description = "Web App"
  type        = string
  default     = "bestrong-web-app"
}

variable "environment" {
  description = "Environment (Development, Staging, Production)"
  type        = string
  default     = "Production"
}

variable "use_docker_auth" {
  description = "Docker Auth"
  type        = bool
  default     = true
}

variable "docker_username" {
  description = "Docker username"
  type        = string
  sensitive   = true
}

variable "docker_password" {
  description = "Docker password / access token"
  type        = string
  sensitive   = true
}

variable "docker_image_name" {
  description = "Docker Image name with tag"
  type        = string
  default     = "yuliakalinka/bestrong-web-api:latest"
}

variable "tags" {
  description = "Tags for resources"
  type        = map(string)
  default = {
    Environment = "Production"
    Project     = "BeStrong"
    ManagedBy   = "Terraform"
  }
}