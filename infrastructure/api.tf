# module "api" {
#  for_each                   = { for region in var.backend_regions : region.code => region }
#  source                     = "./modules/api"
#  resource_group             = azurerm_resource_group.resource_group.name
#  api_management_name        = azurerm_api_management.apim.name
# }

