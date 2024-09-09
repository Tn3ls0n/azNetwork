az network vnet create --resource-group $rg --name  ResearchVnet --address-prefixes 10.40.40.0/24 --location $researchLocation

az network vnet subnet create --resource-group $rg --vnet-name ResearchVnet --name appSubnet --address-prefixes 10.40.40.0/24
az network vnet subnet list   --resource-group $rg --vnet-name ResearchVnet --output table

az vm create --resource-group $rg --no-wait --name ResearchVM --location westeurope --vnet-name ResearchVNet --subnet appSubnet --image Ubuntu2204 --admin-username $adminUsername --admin-password $adminPassword
