<h3 align="left">
  <img width="600" height="128" alt="image" src="https://raw.githubusercontent.com/artemis-env0/Packages/refs/heads/main/Images/Logo%20Pack/01%20Main%20Logo/Digital/SVG/envzero_logomark_fullcolor_rgb.svg" />
</h3>

# env0-azure-vm-pd-demo

Public consumer repository for the Env0 Live Demo AGA Azure VM persistent disk deployment.

## Purpose

This repository contains the env0 workflow and child environment folders that consume modules from the env0 Module Registry.

## Repository layout

```text
env0-azure-vm-pd-demo
  README.md
  .gitignore
  env0.workflow.yml
  network
    README.md
    versions.tf
    main.tf
    variables.tf
    outputs.tf
    env0.yml
  compute
    README.md
    versions.tf
    main.tf
    variables.tf
    outputs.tf
    terraform.tfvars.example
    env0.yml
```

## Workflow layout

The workflow has two child environments:

- `network`
- `compute`

The `compute` environment depends on the `network` environment.

## Demo defaults

- Azure region: `eastus`
- Resource prefix: `Env0-Live-Demo-AGA`
- Private IPs only
- 2 Linux VMs
- 2 Windows VMs
- 2 managed data disks per VM
- 96 GB minimum per data disk

## Security notes

Do not commit secrets to this repository.

Do not commit:

- Azure client secrets
- Windows administrator passwords
- Linux private SSH keys
- Real `.tfvars` files
- Terraform state files
