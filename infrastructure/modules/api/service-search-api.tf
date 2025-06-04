resource "azurerm_api_management_api_version_set" "profile_viewer" {
  name                = "profile-viewer-version-set"
  resource_group_name = var.resource_group
  api_management_name = var.api_management_name
  display_name        = "Profile Viewer API"
  versioning_scheme   = "Segment"
}

resource "azurerm_api_management_api" "profile-viewer-api" {
  name                = "profile-viewer-api"
  resource_group_name = var.resource_group
  api_management_name = var.api_management_name
  revision            = "1"
  version = "3"
  version_set_id = azurerm_api_management_api_version_set.profile_viewer.id
  version_description = "Version 3.0"
  display_name        = "Profile Viewer API"
  path                = "profiles"
  protocols           = ["https"]
  subscription_key_parameter_names {
    header = "Subscription-Key"
    query  = "subscription-key"
  }

}

resource "azurerm_api_management_api_operation" "get_profiles" {
  operation_id        = "get-profiles"
  api_name            = azurerm_api_management_api.profile-viewer-api.name
    resource_group_name = var.resource_group
  api_management_name = var.api_management_name
  display_name        = "Get Profiles"
  method              = "GET"
  url_template        = "/get-profiles"
  response {
    status_code = 200
    description = "OK"
  }
}



resource "azurerm_api_management_api" "profile-viewer-api-2" {
  name                = "profile-viewer-api-2"
    resource_group_name = var.resource_group
  api_management_name = var.api_management_name
  revision            = "4"
  version = "2"
  version_set_id = azurerm_api_management_api_version_set.profile_viewer.id
  version_description = "Version 2.0"
  display_name        = "Profile Viewer API"
  path                = "profiles"
  protocols           = ["https"]
  subscription_key_parameter_names {
    header = "Subscription-Key"
    query  = "subscription-key"
  }

}

resource "azurerm_api_management_api_operation" "get_profiles-2" {
  operation_id        = "get-profiles-2"
  api_name            = azurerm_api_management_api.profile-viewer-api-2.name
    resource_group_name = var.resource_group
  api_management_name = var.api_management_name
    display_name        = "Get Profiles"
  method              = "GET"
  url_template        = "/get-profiles"
  response {
    status_code = 200
    description = "OK"
  }
}


