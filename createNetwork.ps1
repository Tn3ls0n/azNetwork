az login
$rg = Read-Host "Enter rg name"
$coreServicesLocation  = Read-Host "Enter core services vnet location" 
$manufacturingLocation = Read-Host "Enter manufacturing vnet location"
$researchLocation = Read-Host "Enter reseach vnet location"
.\CoreServices.ps1 --no-wait
.\Manufacturing.ps1 --no-wait
.\Research.ps1 --no-wait
az network vnet list --query "[?contains(provisioningState, 'Succeeded')]" --output table
