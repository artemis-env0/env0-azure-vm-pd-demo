<h3 align="left">
  <img width="600" height="128" alt="image" src="https://raw.githubusercontent.com/artemis-env0/Packages/refs/heads/main/Images/Logo%20Pack/01%20Main%20Logo/Digital/SVG/envzero_logomark_fullcolor_rgb.svg" />
</h3>

# network

env0 child environment for Azure network deployment.

## Purpose

This environment consumes the `azure-network` module from the env0 Module Registry.

## Resources created by the module

- Resource group
- Virtual network
- Private subnet
- Network security group
- Subnet to network security group association

## Defaults

```text
name_prefix = Env0-Live-Demo-AGA
location    = eastus
vnet        = 10.40.0.0/16
subnet      = 10.40.1.0/24
```

## Outputs consumed by compute

- `resource_group_name`
- `location`
- `subnet_id`

These outputs will be mapped into the `compute` child environment in env0.
