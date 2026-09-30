targetScope = 'resourceGroup'

@description('Azure region where the environment will be deployed.')
param location string = resourceGroup().location

@description('Environment name.')
param environmentName string = 'dev'

@description('Name of the virtual network.')
param vnetName string = 'vnet-${environmentName}'

@description('Name of the network security group.')
param nsgName string = 'nsg-${environmentName}'

@description('Globally unique storage account name.')
param storageAccountName string

@description('Name of the virtual machine.')
param vmName string = 'vm-${environmentName}-ci'

@description('Name of the virtual machine network interface.')
param nicName string = 'nic-${environmentName}-ci'

@description('Administrator username for the Linux virtual machine.')
param adminUsername string = 'azureuser'

@description('SSH public key for the Linux virtual machine.')
param adminSshPublicKey string

@description('Virtual machine size.')
param vmSize string = 'Standard_B1s'

module security './modules/security.bicep' = {
  name: 'securityDeployment'
  params: {
    location: location
    nsgName: nsgName
  }
}

module network './modules/network.bicep' = {
  name: 'networkDeployment'
  params: {
    location: location
    vnetName: vnetName
    nsgId: security.outputs.nsgId
  }
}

module storage './modules/storage.bicep' = {
  name: 'storageDeployment'
  params: {
    location: location
    storageAccountName: storageAccountName
  }
}

module compute './modules/compute.bicep' = {
  name: 'computeDeployment'
  params: {
    location: location
    vmName: vmName
    nicName: nicName
    subnetId: network.outputs.appSubnetId
    adminUsername: adminUsername
    adminSshPublicKey: adminSshPublicKey
    vmSize: vmSize
  }
}

output deployedLocation string = location
output environment string = environmentName
output virtualNetworkName string = network.outputs.vnetName
output storageAccountName string = storage.outputs.storageAccountName
output networkSecurityGroupId string = security.outputs.nsgId
output virtualMachineName string = compute.outputs.vmName
output virtualMachineId string = compute.outputs.vmId
output virtualMachinePrivateIp string = compute.outputs.privateIpAddress
