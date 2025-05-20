resource "azurerm_api_management_subscription" "example_subscription" {
  subscription_id     = "example-subscription"
  resource_group_name = azurerm_resource_group.resource_group.name
  api_management_name = azurerm_api_management.apim.name
  user_id             = azurerm_api_management_user.example_user.id
  product_id          = azurerm_api_management_product.example.id
  display_name        = "Example Subscription"
  state               = "active"
}

resource "azurerm_api_management_subscription" "fas_subscription" {
  subscription_id     = "Find-a-Service"
  resource_group_name = azurerm_resource_group.resource_group.name
  api_management_name = azurerm_api_management.apim.name
  user_id             = azurerm_api_management_user.FAS_user.id
  product_id          = azurerm_api_management_product.find-a-service.id
  display_name        = "Find a Service Subscription"
  state               = "active"
}

resource "azurerm_api_management_backend" "name" {
  name = "example-backend"
  resource_group_name = azurerm_resource_group.resource_group.name
  api_management_name = azurerm_api_management.apim.name
  url                = "https://example.com"
  protocol           = "http"
  
}