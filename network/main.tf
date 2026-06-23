module "network" {
  source  = "api.env0.com/bde19c6d-d0dc-4b11-a951-8f43fe49db92/azure-network/azurerm"
  version = "1.0.1"

  name_prefix           = var.name_prefix
  location              = var.location
  vnet_address_space    = var.vnet_address_space
  subnet_address_prefix = var.subnet_address_prefix
  tags                  = var.tags
}
