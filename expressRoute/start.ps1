az login

$rg = Read-Host "Enter rg name"
$vnet  = Read-Host "Enter vnet name" 
$vnetLocation = Read-Host "Enter vnet location" 
$gwSubnet = Read-Host "Enter gateway subnet name"
$gwIp = Read-Host "Enter gateway public ip address name"
$expressRouteCircuit = Read-Host "Enter express route circuit name"

echo creating resources...
.\azureResources.ps1 
echo resources created...