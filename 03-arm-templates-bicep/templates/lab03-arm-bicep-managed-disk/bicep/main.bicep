@description('Name of the managed disk.')
param diskName string

@description('Azure region for the disk.')
param location string = resourceGroup().location

@description('Managed disk SKU.')
@allowed([
  'Standard_LRS'
  'StandardSSD_LRS'
  'Premium_LRS'
  'UltraSSD_LRS'
])
param diskSku string = 'StandardSSD_LRS'

@description('Disk size in GiB.')
@minValue(4)
@maxValue(65536)
param diskSizeGB int = 32

@description('Optional tags to apply to the disk.')
param tags object = {}

resource managedDisk 'Microsoft.Compute/disks@2023-10-02' = {
  name: diskName
  location: location
  tags: tags
  sku: {
    name: diskSku
  }
  properties: {
    creationData: {
      createOption: 'Empty'
    }
    diskSizeGB: diskSizeGB
    encryption: {
      type: 'EncryptionAtRestWithPlatformKey'
    }
  }
}

output diskId string = managedDisk.id
