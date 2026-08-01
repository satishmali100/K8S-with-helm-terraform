module "rg" {
    source = "../../modules/1_azurerm_resource_group"
    rg = var.rg
}

module "vnet" {
    depends_on = [ module.rg ]
    source = "../../modules/2_azurerm_virtual_network"
    vnet = var.vnet
}

module "subnet" {
    depends_on = [module.rg, module.vnet] 
    source = "../../modules/3_azurerm_subnet"
    subnet = var.subnet
}

module "k8s" {
    depends_on = [module.rg, module.subnet] 
    source = "../../modules/4_azurerm_kubernetes_cluster"
  k8s = var.k8s
}

module "storage" {
    depends_on = [module.rg]
    source = "../../modules/5_azurerm_storage_account"
  storage = var.storage
}