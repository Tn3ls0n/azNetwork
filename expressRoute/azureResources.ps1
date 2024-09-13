az network vnet create --resource-group $rg --name $vnet --address-prefixes 10.20.0.0/16 --location $vnetLocation
az network vnet subnet create --resource-group $rg --vnet-name $vnet --name $gwSubnet --address-prefixes 10.20.0.0/27
az network public-ip create --resource-group $rg --name $gwIp --allocation-method Static --version IPv4 --sku Standard --zone 2
az network vnet-gateway create -g $rg -n MyVnetGateway --public-ip-address $gwIp --vnet $vnet --gateway-type Vpn --sku VpnGw1 --vpn-type RouteBased
az network express-route create --bandwidth 200 -n $expressRouteCircuit --peering-location $vnetLocation -g $rg --provider "Equinix" -l "West US" --sku-family MeteredData --sku-tier Standard