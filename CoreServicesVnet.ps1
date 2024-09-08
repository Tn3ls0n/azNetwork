az network vnet create --resource-group "" --name CoreServicesVnet --address-prefixes 10.20.0.0/16 --location westus

az network vnet subnet create --resource-group "" --vnet-name CoreServicesVnet --name GatewaySubnet --address-prefixes 10.20.0.0/27

az network vnet subnet create --resource-group "" --vnet-name CoreServicesVnet --name SharedServicesSubnet --address-prefixes 10.20.10.0/24

az network vnet subnet create --resource-group "" --vnet-name CoreServicesVnet --name DatabaseSubnet --address-prefixes 10.20.20.0/24

az network vnet subnet create --resource-group "" --vnet-name CoreServicesVnet --name PublicWebServiceSubnet --address-prefixes 10.20.30.0/24

az network vnet subnet list --resource-group "" --vnet-name CoreServicesVnet --output table
