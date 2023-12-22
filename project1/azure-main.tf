resource "azurerm_resource_group" "name" {
  name     = "rg-tfcloud"
  location = "southindia"
  tags = {
    "app" = "tfcloud"
    "test" = "github-commit"
  }

}

resource "azurerm_app_service_plan" "example" {
  name                = "api-appserviceplan-pro"
  location            = azurerm_resource_group.name.location
  resource_group_name = azurerm_resource_group.name.name

  sku {
    tier = "Standard"
    size = "S1"
  }
}


# resource "aws_s3_bucket" "example" {
#   bucket = "my-tf-train-bucket"

#   tags = {
#     Name        = "My bucket"
#     Environment = "Dev"
#   }
# }