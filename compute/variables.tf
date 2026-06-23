variable "name_prefix" {
  description = "Prefix used for Azure resource names."
  type        = string
  default     = "Env0-Live-Demo-AGA"
}

variable "resource_group_name" {
  description = "Name of the Azure resource group from the network child environment."
  type        = string
}

variable "location" {
  description = "Azure region from the network child environment."
  type        = string
}

variable "subnet_id" {
  description = "Private subnet ID from the network child environment."
  type        = string
}

variable "linux_admin_ssh_public_key" {
  description = "SSH public key used for Linux VM administrator access."
  type        = string
  sensitive   = true

  validation {
    condition     = startswith(trimspace(var.linux_admin_ssh_public_key), "ssh-")
    error_message = "linux_admin_ssh_public_key must be a valid SSH public key string."
  }
}

variable "windows_admin_password" {
  description = "Password used for Windows VM administrator access."
  type        = string
  sensitive   = true

  validation {
    condition     = length(var.windows_admin_password) >= 20
    error_message = "windows_admin_password must be at least 20 characters long."
  }
}

variable "tags" {
  description = "Additional tags passed to the compute module."
  type        = map(string)

  default = {
    Demo        = "Env0-Live-Demo-AGA"
    Environment = "compute"
    ManagedBy   = "env0"
  }
}
