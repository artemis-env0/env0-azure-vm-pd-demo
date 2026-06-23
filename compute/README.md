<h3 align="left">
  <img width="600" height="128" alt="image" src="https://raw.githubusercontent.com/artemis-env0/Packages/refs/heads/main/Images/Logo%20Pack/01%20Main%20Logo/Digital/SVG/envzero_logomark_fullcolor_rgb.svg" />
</h3>

# compute

env0 child environment for Azure VM and persistent disk deployment.

## Purpose

This environment consumes the `azure-vm-with-managed-disks` module from the env0 Module Registry.

## Resources created by the module

- Private network interfaces
- Linux virtual machines
- Windows virtual machines
- Managed data disks
- Data disk attachments

## Default layout

```text
Linux VMs          = 2
Windows VMs        = 2
Data disks per VM  = 2
Total data disks   = 8
Data disk size     = 96 GB
VM size            = Standard_B2s
```

## Inputs from network

These values will come from the `network` child environment outputs:

- `resource_group_name`
- `location`
- `subnet_id`

## Sensitive inputs from env0 Variable Set

These values must be configured in env0 as sensitive variables:

- `linux_admin_ssh_public_key`
- `windows_admin_password`

## Security notes

This environment creates private IPs only.

No public IP addresses are created.
