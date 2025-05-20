# This file contains the configuration for the API Management users.
# It includes the main NHS.UK user for API Management. This should not be changed.

resource "azurerm_api_management_user" "nhsuk_user" {
  user_id             = "NHSUK-Main-Internal-User"
  resource_group_name = azurerm_resource_group.resource_group.name
  api_management_name = azurerm_api_management.apim.name
  first_name          = "Nhswebsite"
  last_name           = "Servicedesk"
  email               = "nhswebsite.servicedesk@nhs.net"
  state               = "active"
  note                = "This is the main user for API Management."
}
