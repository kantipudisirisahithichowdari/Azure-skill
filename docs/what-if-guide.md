# What-If Change Analysis

## Problem

Large Azure What-If outputs can contain many resources and properties,
making it difficult to identify the actual infrastructure impact.

## Approach

The project uses Bicep modules and parameter files to keep infrastructure
changes controlled and predictable.

Before deployment:

1. Validate the Bicep template.
2. Run Azure What-If.
3. Review resources marked for create, modify, delete, or no change.
4. Focus on the affected resource type and resource name.
5. Deploy only after unexpected changes have been investigated.

## Resource Change Meaning

- Create (+): A new resource will be deployed.
- Modify (~): An existing resource will be changed.
- Delete (-): An existing resource will be removed.
- No change: The deployed resource already matches the template.

## Multi-Region Usage

The same Bicep modules are reused with different parameter files:

- region1.bicepparam -> Central India
- region2.bicepparam -> Malaysia West

This allows What-If analysis to be performed independently for each
environment before deployment.

## Verification

What-If is used as a pre-deployment safety check. The deployment is
performed only after reviewing the proposed resource changes.
