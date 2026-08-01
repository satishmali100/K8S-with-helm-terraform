terraform {
  backend "azurerm" {
    resource_group_name  = "satish-rg"
    storage_account_name = "satishstoragesss"
    container_name       = "tfstate"
    key                  = "nonprod.tfstate"
    use_oidc             = true
  }
}