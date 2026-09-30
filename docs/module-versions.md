# Module Version Registry

This document tracks the released versions of the Bicep infrastructure modules.

## Current Stable Release

- Release: v1.1.0

## Module Versions

| Module | Version | Purpose |
|---|---|---|
| network.bicep | v1.0.0 | Virtual network and subnet configuration |
| security.bicep | v1.1.0 | Network security group and security rules |
| storage.bicep | v1.0.0 | Azure Storage Account configuration |
| compute.bicep | v1.0.0 | Linux virtual machine and network interface |
## v1.1.0

Security module documentation improvement:

- Added module version metadata.
- Improved maintainability by documenting the module release.
- No Azure resource configuration changes were introduced.
- What-If validation confirmed that the documentation-only change does not modify deployed infrastructure.
## Release History

### v1.0.0


Initial stable infrastructure release containing:

- Network module
- Security module
- Storage module
- Compute module
- Multi-region parameter files
- What-If validation documentation

## Versioning Rules

Semantic versioning is used:

- MAJOR: Breaking infrastructure/module changes
- MINOR: Backward-compatible functionality
- PATCH: Backward-compatible fixes or documentation changes

Git tags are used to identify exact released versions.
