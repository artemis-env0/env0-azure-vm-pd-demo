output "resource_group_name" {
  description = "Name of the Azure resource group."
  value       = module.network.resource_group_name
}

output "resource_group_id" {
  description = "ID of the Azure resource group."
  value       = module.network.resource_group_id
}

output "location" {
  description = "Azure region used by the network deployment."
  value       = module.network.location
}

output "vnet_name" {
  description = "Name of the virtual network."
  value       = module.network.vnet_name
}

output "vnet_id" {
  description = "ID of the virtual network."
  value       = module.network.vnet_id
}

output "subnet_name" {
  description = "Name of the private subnet."
  value       = module.network.subnet_name
}

output "subnet_id" {
  description = "ID of the private subnet."
  value       = module.network.subnet_id
}

output "network_security_group_name" {
  description = "Name of the network security group."
  value       = module.network.network_security_group_name
}

output "network_security_group_id" {
  description = "ID of the network security group."
  value       = module.network.network_security_group_id
}
