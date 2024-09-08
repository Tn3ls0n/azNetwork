az network vnet        create --resource-group $rg --name      ResearchVnet --address-prefixes 10.40.40.0/24 --location $researchLocation
az network vnet subnet create --resource-group $rg --vnet-name ResearchVnet --name ResearchSystemSubnet --address-prefixes 10.40.40.0/24
az network vnet subnet list   --resource-group $rg --vnet-name ResearchVnet --output table
