# Azure Bicep Infrastructure as Code Project

## Project

Azure Bicep Infrastructure as Code for a Full Environment

## Resource Group

rg-bicep-demo-ci

## Architecture

The infrastructure is organized into reusable Bicep modules:

- network.bicep
- security.bicep
- storage.bicep
- compute.bicep

The main.bicep template orchestrates these modules.

## Region 1

- Region: Central India
- Environment: dev
- VNet: vnet-dev-ci
- NSG: nsg-dev-ci
- Storage: stbicepdevci001
- VM: vm-dev-ci

## Region 2

- Region: Malaysia West
- Environment: dev
- VNet: vnet-dev-r2
- NSG: nsg-dev-r2
- Storage: stbicepdevr2001
- VM: vm-dev-r2

## Infrastructure as Code

Bicep is used to define Azure infrastructure declaratively.

The same reusable modules are deployed using different parameter files:

- parameters/region1.bicepparam
- parameters/region2.bicepparam

## What-If Analysis

Azure What-If is used before deployment to identify:

- Resources to create
- Resources to modify
- Resources to delete
- Resources with no changes

A What-If analysis workflow is documented in:

docs/what-if-guide.md

## Module Versioning

Git and GitHub are used for infrastructure source control.

Semantic versioning is used for releases:

- v1.0.0 - Initial infrastructure release
- v1.0.1 - Version registry/documentation update
- v1.1.0 - Security module documentation release

Module versions are tracked in:

docs/module-versions.md

## Project Bottleneck 1

### Problem

Large What-If outputs can be difficult to interpret.

### Solution

The project uses:

- Modular Bicep templates
- Parameter files
- A documented What-If workflow
- Pre-deployment validation

## Project Bottleneck 2

### Problem

Module versions across teams can become undisciplined.

### Solution

The project uses:

- Git
- GitHub
- Semantic versioning
- Git tags
- Module version registry

## Multi-Region Deployment

The infrastructure can be recreated in another Azure region by using the same Bicep modules with a different parameter file.

This demonstrates reusable and portable infrastructure definitions.

## Validation

The project includes:

- Bicep compilation
- ARM deployment validation
- Azure What-If analysis
- Multi-region deployment
- Git-based version tracking

## Security

The infrastructure includes Network Security Groups with HTTP and HTTPS rules.

SSH password authentication is disabled for the Linux virtual machines and SSH key authentication is used.

## Final Outcome

The project provides a reusable, parameterized, version-controlled Azure infrastructure environment that can be deployed across supported Azure regions using Bicep.
