resource "azurerm_api_management_product" "example" {
  product_id          = "example-product"
  resource_group_name = azurerm_resource_group.resource_group.name
  api_management_name = azurerm_api_management.apim.name
  display_name        = "Example Product"
  subscription_required = true
  approval_required     = false
  published             = true
  description           = "This is an example product for API Management."
}

resource "azurerm_api_management_product" "find-a-service" {
  product_id          = "find-a-service-product"
  resource_group_name = azurerm_resource_group.resource_group.name
  api_management_name = azurerm_api_management.apim.name
  display_name        = "Find a Service Product"
  subscription_required = true
  approval_required     = false
  published             = true
  description           = "This provides all access for Find a Service."
}