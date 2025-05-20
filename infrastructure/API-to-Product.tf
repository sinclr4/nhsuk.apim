
resource "azurerm_api_management_product_api" "example" {
  resource_group_name = azurerm_resource_group.resource_group.name
  api_management_name = azurerm_api_management.apim.name
  product_id           = azurerm_api_management_product.example.product_id
  api_name             = azurerm_api_management_api.profile-viewer-api.name
<<<<<<< HEAD

=======
>>>>>>> 4703766 (first commit)
}


resource "azurerm_api_management_product_api" "find-a-service" {
  # This resource associates the Find a Service API with the Find a Service product
  # in Azure API Management.
  resource_group_name = azurerm_resource_group.resource_group.name
  api_management_name = azurerm_api_management.apim.name
  product_id           = azurerm_api_management_product.find-a-service.product_id
  api_name             = azurerm_api_management_api.profile-viewer-api.name
}

resource "azurerm_api_management_product_api" "find-a-service-v2" {
  # This resource associates the Find a Service API with the Find a Service product
  # in Azure API Management.
  resource_group_name = azurerm_resource_group.resource_group.name
  api_management_name = azurerm_api_management.apim.name
  product_id           = azurerm_api_management_product.find-a-service.product_id
  api_name             = azurerm_api_management_api.profile-viewer-api-2.name
}



