# create sales and marketing vnet peering...
az network vnet peering create --name SalesVNet-To-MarketingVNet --remote-vnet MarketingVNet --resource-group $rg --vnet-name SalesVNet --allow-vnet-access
az network vnet peering create --name MarketingVNet-To-SalesVNet --remote-vnet SalesVNet --resource-group $rg --vnet-name MarketingVNet --allow-vnet-access

# create reseach and marketing vnet peering...
az network vnet peering create --name MarketingVNet-To-ResearchVNet --remote-vnet ResearchVNet --resource-group $rg --vnet-name MarketingVNet --allow-vnet-access
az network vnet peering create --name ResearchVNet-To-MarketingVNet --remote-vnet MarketingVNet --resource-group $rg --vnet-name ResearchVNet --allow-vnet-access

# list peerings for vnets...
az network vnet peering list --resource-group $rg --vnet-name SalesVNet --query "[].{Name:name, Resource:resourceGroup, PeeringState:peeringState, AllowVnetAccess:allowVirtualNetworkAccess}" --output table
az network vnet peering list --resource-group $rg --vnet-name ResearchVNet --query "[].{Name:name, Resource:resourceGroup, PeeringState:peeringState, AllowVnetAccess:allowVirtualNetworkAccess}" --output table
az network vnet peering list --resource-group $rg --vnet-name MarketingVNet --query "[].{Name:name, Resource:resourceGroup, PeeringState:peeringState, AllowVnetAccess:allowVirtualNetworkAccess}" --output table

# list effective routes...
az network nic show-effective-route-table --resource-group $rg --name SalesVMVMNic --output table
az network nic show-effective-route-table --resource-group $rg --name MarketingVMVMNic --output table
az network nic show-effective-route-table --resource-group $rg --name ResearchVMVMNic --output table
