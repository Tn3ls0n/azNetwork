az network vnet create --resource-group "" --name ResearchVnet --address-prefixes 10.40.40.0/24 --location westindia

az network vnet subnet create --resource-group "" --vnet-name ResearchVnet --name ResearchSystemSubnet --address-prefixes 10.40.40.0/24

az network vnet subnet list --resource-group "" --vnet-name ResearchVnet --output table
