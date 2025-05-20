resource "azurerm_api_management_user" "example_user" {
  user_id             = "example-user"
  resource_group_name = azurerm_resource_group.resource_group.name
  api_management_name = azurerm_api_management.apim.name
  first_name          = "John"
  last_name           = "Doe"
  email               = "john.doe@example.com"
  state               = "active"
  note                = "This is an example user for API Management."
}

resource "azurerm_api_management_user" "FAS_user" {
  user_id             = "fas-user"
  resource_group_name = azurerm_resource_group.resource_group.name
  api_management_name = azurerm_api_management.apim.name
  first_name          = "Find a Service"
  last_name           = "User"
  email               = "find@nhs.net"
  state               = "active"
  note                = "This is the Find a Service User."
}