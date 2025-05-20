
resource "azurerm_api_management_subscription" "fas_subscription" {
  subscription_id     = "Find-a-Service"
  resource_group_name = azurerm_resource_group.resource_group.name
  api_management_name = azurerm_api_management.apim.name
  user_id             = azurerm_api_management_user.nhsuk_user.id
  product_id          = azurerm_api_management_product.find-a-service.id
  display_name        = "Find a Service Subscription"
  state               = "active"
}

resource "azurerm_api_management_subscription" "profiles_subscription" {
  subscription_id     = "Profiles"
  resource_group_name = azurerm_resource_group.resource_group.name
  api_management_name = azurerm_api_management.apim.name
  user_id             = azurerm_api_management_user.nhsuk_user.id
  product_id          = azurerm_api_management_product.profiles.id
  display_name        = "Profiles Subscription"
  state               = "active"
}

