@description('Azure region where the virtual network will be deployed.')
param location string

@description('Name of the virtual network.')
param vnetName string

@description('Resource ID of the network security group.')
param nsgId string

@description('Address space for the virtual network.')
param addressPrefix string = '10.10.0.0/16'

resource vnet 'Microsoft.Network/virtualNetworks@2024-05-01' = {
  name: vnetName
  location: location

  properties: {
    addressSpace: {
      addressPrefixes: [
        addressPrefix
      ]
    }

    subnets: [
      {
        name: 'web-subnet'
        properties: {
          addressPrefix: '10.10.1.0/24'
          networkSecurityGroup: {
            id: nsgId
          }
        }
      }

      {
        name: 'app-subnet'
        properties: {
          addressPrefix: '10.10.2.0/24'
          networkSecurityGroup: {
            id: nsgId
          }
        }
      }

      {
        name: 'data-subnet'
        properties: {
          addressPrefix: '10.10.3.0/24'
          networkSecurityGroup: {
            id: nsgId
          }
        }
      }
    ]
  }
}

output vnetName string = vnet.name

output webSubnetId string = resourceId(
  'Microsoft.Network/virtualNetworks/subnets',
  vnet.name,
  'web-subnet'
)

output appSubnetId string = resourceId(
  'Microsoft.Network/virtualNetworks/subnets',
  vnet.name,
  'app-subnet'
)

output dataSubnetId string = resourceId(
  'Microsoft.Network/virtualNetworks/subnets',
  vnet.name,
  'data-subnet'
)
