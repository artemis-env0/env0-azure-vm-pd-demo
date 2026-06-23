output "linux_vm_names" {
  description = "Names of Linux virtual machines."
  value       = module.compute.linux_vm_names
}

output "windows_vm_names" {
  description = "Names of Windows virtual machines."
  value       = module.compute.windows_vm_names
}

output "vm_private_ips" {
  description = "Private IP addresses by VM key."
  value       = module.compute.vm_private_ips
}

output "network_interface_ids" {
  description = "Network interface IDs by VM key."
  value       = module.compute.network_interface_ids
}

output "managed_disk_ids" {
  description = "Managed data disk IDs by disk key."
  value       = module.compute.managed_disk_ids
}

output "disk_attachment_ids" {
  description = "Data disk attachment IDs by disk key."
  value       = module.compute.disk_attachment_ids
}

output "vm_summary" {
  description = "Summary of deployed VMs and associated data disks."
  value       = module.compute.vm_summary
}
