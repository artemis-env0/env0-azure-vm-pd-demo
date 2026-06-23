module "compute" {
  source  = "api.env0.com/REPLACE_WITH_ENV0_ORG_ID/azure-vm-with-managed-disks/azurerm"
  version = "1.0.0"

  name_prefix                = var.name_prefix
  resource_group_name        = var.resource_group_name
  location                   = var.location
  subnet_id                  = var.subnet_id
  linux_admin_ssh_public_key = var.linux_admin_ssh_public_key
  windows_admin_password     = var.windows_admin_password
  tags                       = var.tags
}
