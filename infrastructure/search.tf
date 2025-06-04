resource "azurerm_search_service" "search" {
  #checkov:skip=CKV_AZURE_124:Not using private network
  #checkov:skip=CKV_AZURE_208:Ensure that Azure Cognitive Search maintains SLA for index updates (Not applicable to all environments)
  #checkov:skip=CKV_AZURE_209:Ensure that Azure Cognitive Search maintains SLA for search index queries (Not applicable to all environments)

  name                         = "${var.app_name}-srch-uks"
  resource_group_name          = azurerm_resource_group.resource_group.name
  location                     = "UK South"
  sku                          = "standard"
  replica_count                = 2
  partition_count              = 2

  local_authentication_enabled = true

  # public_network_access_enabled = true
  # allowed_ips = [ "" ]
  # network_rule_bypass_option = "AzureServices"

  identity {
    type = "SystemAssigned"
  }


}
# To do this: https://learn.microsoft.com/en-us/rest/api/searchservice/preview-api/create-or-update-index
resource "restapi_object" "create_index" {
  path         = "/indexes"
  query_string = "api-version=2024-07-01"
  data         = jsonencode(local.index_json)
  id_attribute = "service-search-syndication-3-0" # The ID field on the response
}

# To do https://learn.microsoft.com/en-us/rest/api/searchservice/create-data-source
resource "restapi_object" "create_datasource" {
  path         = "/datasources"
  query_string = "api-version=2024-07-01"
  data         = jsonencode(local.datasource_json)
  id_attribute = "service-search-syndication-3-0" # The ID field on the response
}

# To do https://learn.microsoft.com/en-us/rest/api/searchservice/create-indexer
resource "restapi_object" "create_indexer" {
  path         = "/indexers"
  query_string = "api-version=2024-07-01"
  data         = jsonencode(local.indexer_json)
  id_attribute = "service-search-syndication-3-0" # The ID field on the response

}