resource "azurerm_resource_group" "name" {
  name     = "rg-tfcloud"
  location = "southindia"
  tags = {
    "app" = "tfcloud"
    "test" = "github-commit"
  }

}

resource "azurerm_public_ip" "my_terraform_public_ip" {
  name                = "cost-testing-public-ip"
  location            = azurerm_resource_group.name.location
  resource_group_name = azurerm_resource_group.name.name
  allocation_method   = "Dynamic"
}


# resource "aws_s3_bucket" "example" {
#   bucket = "my-tf-train-bucket"

#   tags = {
#     Name        = "My bucket"
#     Environment = "Dev"
#   }
# }