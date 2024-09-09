az login

$rg = Read-Host "Enter rg name"
$coreServicesLocation  = Read-Host "Enter core services vnet location" 
$manufacturingLocation = Read-Host "Enter manufacturing vnet location"
$researchLocation = Read-Host "Enter reseach vnet location"
$adminUsername = Read-Host "Enter admin username" -AsSecureString
$adminPassword = Read-Host "Enter admin password" -AsSecureString

.\CoreServices.ps1 --no-wait
.\Manufacturing.ps1 --no-wait
.\Research.ps1 --no-wait

az network vnet list --query "[?contains(provisioningState, 'Succeeded')]" --output table
watch -d -n 5 "az vm list \
    --resource-group $rg \
    --show-details \
    --query '[*].{Name:name, ProvisioningState:provisioningState, PowerState:powerState}' \
    --output table"

.\peerings.ps1
