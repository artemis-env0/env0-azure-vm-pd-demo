module "network" {
  source  = "api.env0.com/REPLACE_WITH_ENV0_ORG_ID/azure-network/azurerm"
  version = "1.0.0"

  name_prefix           = var.name_prefix
  location              = var.location
  vnet_address_space    = var.vnet_address_space
  subnet_address_prefix = var.subnet_address_prefix
  tags                  = var.tags
}
