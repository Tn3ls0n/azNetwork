# core services infrastructure...
az network vnet create --resource-group $rg --name CoreServicesVnet --address-prefixes 10.20.0.0/16 --location $coreServicesLocation
az network vnet subnet create --resource-group $rg --vnet-name CoreServicesVnet --name GatewaySubnet --address-prefixes 10.20.0.0/27
az network vnet subnet create --resource-group $rg --vnet-name CoreServicesVnet --name appSubnet --address-prefixes 10.20.10.0/24
az network vnet subnet create --resource-group $rg --vnet-name CoreServicesVnet --name DatabaseSubnet --address-prefixes 10.20.20.0/24
az network vnet subnet create --resource-group $rg --vnet-name CoreServicesVnet --name PublicWebServiceSubnet --address-prefixes 10.20.30.0/24
az network vnet subnet list --resource-group $rg --vnet-name CoreServicesVnet --output table
az vm create --resource-group $rg --no-wait --name SalesVM --location northeurope --vnet-name CoreServicesVnet --subnet appSubnet --image Ubuntu2204 --admin-username $adminUsername --admin-password $adminPassword

# manufacturing infrastructure...
az network vnet create --resource-group $rg --name ManufacturingVnet --address-prefixes 10.30.0.0/16 --location $manufacturingLocation
az network vnet subnet create --resource-group $rg --vnet-name ManufacturingVnet --name ManufacturingSystemSubnet --address-prefixes 10.30.10.0/24
az network vnet subnet create --resource-group $rg --vnet-name ManufacturingVnet --name appSubnet --address-prefixes 10.30.20.0/24
az network vnet subnet create --resource-group $rg --vnet-name ManufacturingVnet --name SensorSubnet --address-prefixes 10.30.21.0/24
az network vnet subnet create --resource-group $rg --vnet-name ManufacturingVnet --name SensorSubnet1 --address-prefixes 10.30.22.0/24
az network vnet subnet list --resource-group $rg --vnet-name ManufacturingVnet --output table
az vm create --resource-group $rg --no-wait --name MarketingVM --location northeurope --vnet-name ManufacturingVnet --subnet appSubnet --image Ubuntu2204 --admin-username $adminUsername --admin-password $adminPassword
