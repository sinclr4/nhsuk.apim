variable "app_name" {
  type    = string
  default = "rsapimdemo"
}

# Regions / IDs sourced from https://api.carbonintensity.org.uk/

locals {
  index_json = jsondecode(file("indexes/profiles.json"))
  indexer_json = jsondecode(file("indexers/profiles.json"))
  datasource_json = jsondecode(file("datasources/profiles.json"))

}


variable "backend_regions" {
  type = list(object({
    code   = string
    name   = string
    api_id = string
  }))
  default = [
    {
      code   = "nweng"
      name   = "North West England"
      api_id = "3"
    },
    {
      code   = "sweng"
      name   = "South West England"
      api_id = "11"
    },
    {
      code   = "swales"
      name   = "South Wales"
      api_id = "7"
    }
  ]
}
