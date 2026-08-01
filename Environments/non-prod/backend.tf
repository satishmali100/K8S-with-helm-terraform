terraform {
  backend "azurerm" {
    resource_group_name  = "tfstate-rg"
    storage_account_name = "satishtfstate001"   # Same as workflow
    container_name       = "tfstate"
    key                  = "nonprod/terraform.tfstate"
    use_oidc             = true
  }
}