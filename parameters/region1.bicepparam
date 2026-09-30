using '../main.bicep'

param location = 'centralindia'
param environmentName = 'dev'
param vnetName = 'vnet-dev-ci'
param nsgName = 'nsg-dev-ci'
param storageAccountName = 'stbicepdevci001'

param vmName = 'vm-dev-ci'
param nicName = 'nic-dev-ci'
param adminUsername = 'azureuser'
param adminSshPublicKey = 'ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIGgpfz+/0+Bztz+ZN0MUa9Q5o/1CtuM7daxmsmCh9Kd5 gorle@SandboxHost-639260246187485962'
param vmSize = 'Standard_B2s_v2'
