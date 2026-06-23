module "compute" {
  source  = "api.env0.com/bde19c6d-d0dc-4b11-a951-8f43fe49db92/azure-vm-with-managed-disks/azurerm"
  version = "1.0.1"

  name_prefix                = var.name_prefix
  resource_group_name        = var.resource_group_name
  location                   = var.location
  subnet_id                  = var.subnet_id
  linux_admin_ssh_public_key = var.linux_admin_ssh_public_key
  windows_admin_password     = var.windows_admin_password
  tags                       = var.tags
}
