variable "name_prefix" {
  description = "Prefix used for all Azure resource names."
  type        = string
  default     = "Env0-Live-Demo-AGA"
}

variable "location" {
  description = "Azure region used for all network resources."
  type        = string
  default     = "eastus"
}

variable "vnet_address_space" {
  description = "CIDR address space for the virtual network."
  type        = string
  default     = "10.40.0.0/16"
}

variable "subnet_address_prefix" {
  description = "CIDR address prefix for the private subnet."
  type        = string
  default     = "10.40.1.0/24"
}

variable "tags" {
  description = "Additional tags passed to the network module."
  type        = map(string)

  default = {
    Demo        = "Env0-Live-Demo-AGA"
    Environment = "network"
    ManagedBy   = "env0"
  }
}
