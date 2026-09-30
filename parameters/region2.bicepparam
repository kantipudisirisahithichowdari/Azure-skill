using '../main.bicep'

param location = 'malaysiawest'
param environmentName = 'dev'
param vnetName = 'vnet-dev-r2'
param nsgName = 'nsg-dev-r2'
param storageAccountName = 'stbicepdevr2001'

param vmName = 'vm-dev-r2'
param nicName = 'nic-dev-r2'
param adminUsername = 'azureuser'
param adminSshPublicKey = 'ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIGgpfz+/0+Bztz+ZN0MUa9Q5o/1CtuM7daxmsmCh9Kd5 gorle@SandboxHost-639260246187485962'
param vmSize = 'Standard_B2s_v2'
