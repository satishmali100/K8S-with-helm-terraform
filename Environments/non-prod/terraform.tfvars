rg = {
    rg1 ={

    name = "satish-rg"
    location = "centralindia"
}
}

vnet = {
    vnet1 ={

    name = "satish-vnet"
    location = "centralindia"
    resource_group_name = "satish-rg"
    address_space = ["10.0.0.0/16"]
}
}

subnet = {
    subnet1 ={

    name = "satish-subnet"
    resource_group_name = "satish-rg"
    virtual_network_name = "satish-vnet"
    address_prefixes = ["10.0.1.0/24"]
}
}


k8s = {
    k8s1 = {
    name = "aks-cluster"
    location = "centralindia"
    resource_group_name = "satish-rg"
    dns_prefix = "akssm"
    node_pool_name = "nodesm"
    node_count =1
    vm_size    = "Standard_D2s_v5"
    type = "SystemAssigned"
    }

}   

storage = {
    storage1 = {
    name                     = "satishstoragesss"
    resource_group_name      = "satish-rg"
    location                 = "centralindia"
    account_tier             = "Standard"
    account_replication_type = "LRS"
    }
}
   