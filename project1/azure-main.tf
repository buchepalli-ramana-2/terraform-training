resource "azurerm_resource_group" "name" {
  name     = "rg-tfcloud"
  location = "southindia"
  tags = {
    "app" = "tfcloud"
    "test" = "github-commit"
  }

}


# resource "aws_s3_bucket" "example" {
#   bucket = "my-tf-train-bucket"

#   tags = {
#     Name        = "My bucket"
#     Environment = "Dev"
#   }
# }