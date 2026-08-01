terraform {
  backend "azurerm" {
    resource_group_name  = "satish-rg"
    storage_account_name = "satishstoragesss"
    container_name       = "tfstate"
    key                  = "nonprod/terraform.tfstate
    use_azuread_auth     = true"
  }
}
#n#