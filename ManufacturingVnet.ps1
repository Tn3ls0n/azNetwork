az network vnet create --resource-group "" --name ManufacturingVnet --address-prefixes 10.30.0.0/16 --location northeurope

az network vnet subnet create --resource-group "" --vnet-name ManufacturingVnet --name ManufacturingSystemSubnet --address-prefixes 10.30.10.0/24

az network vnet subnet create --resource-group "" --vnet-name ManufacturingVnet --name SensorSubnet1 --address-prefixes 10.30.20.0/24

az network vnet subnet create --resource-group "" --vnet-name ManufacturingVnet --name SensorSubnet2 --address-prefixes 10.30.21.0/24

az network vnet subnet create --resource-group "" --vnet-name ManufacturingVnet --name SensorSubnet3 --address-prefixes 10.30.22.0/24

az network vnet subnet list --resource-group "" --vnet-name ManufacturingVnet --output table
