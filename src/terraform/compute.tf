module "network" {
  source  = "Azure/network/azurerm"
  version = "2.0.0"
  # insert the 1 required variable here
  location = var.region 
}

module "compute" {
  source  = "Azure/compute/azurerm"
  version = "2.0.0"
  # insert the 2 required variables here
  location = var.region
  vnet_subnet_id = module.network.vnet_subnets
}


