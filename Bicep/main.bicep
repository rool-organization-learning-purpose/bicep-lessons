resource storageAccount 'Microsoft.Storage/storageAccounts@2022-09-01' = {
  name: storageName
  location: location
  sku: {
    name: 'Premium_LRS'
  }
  kind: 'StorageV2'
}

param storageName string = 'stg${uniqueString(resourceGroup().id)}'
param location string = resourceGroup().location
