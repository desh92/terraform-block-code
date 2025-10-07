module "rg" {
    source              = "../../modules/resource_group"
    resource_group_name = "my-resource-group"
    location            = "East US"
}

module "stg" {
    depends_on = [ module.rg ]
    source              = "../../modules/storage_account"
    storage_account_name = "mystorageaccount123"
    resource_group_name  = module.rg.rg_name
    location             = module.rg.rg_location
}

module "stg_container" {
    depends_on = [ module.stg ]
    source                 = "../../modules/storage_container"
    storage_container_name = "mycontainer"
    storage_account_id     = module.stg.dp_id
  
}