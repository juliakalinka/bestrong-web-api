output "web_app_url" {
  value = "https://${azurerm_linux_web_app.webapp.default_hostname}"
  description = "Web App URL"
}

output "web_app_name" {
  value = azurerm_linux_web_app.webapp.name
  description = "App Service Name"
}