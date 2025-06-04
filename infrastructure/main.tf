terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.26.0"
    }
        restapi = {
      source  = "mastercard/restapi"
      version = "2.0.1"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "c6bc37a4-a5cb-46e8-9a43-d4e8484dd51b"
}
provider "restapi" {
  uri                  = "https://${azurerm_search_service.search.name}.search.windows.net"
  write_returns_object = true
  debug                = true

  headers = {
    "api-key"      = azurerm_search_service.search.primary_key,
    "Content-Type" = "application/json"
  }

  create_method  = "POST"
  update_method  = "PUT"
  destroy_method = "DELETE"
}
