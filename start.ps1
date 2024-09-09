az login

$rg = Read-Host "Enter rg name"
$coreServicesLocation  = Read-Host "Enter core services vnet location" 
$manufacturingLocation = Read-Host "Enter manufacturing vnet location"
$researchLocation = Read-Host "Enter reseach vnet location"
$adminUsername = Read-Host "Enter admin username" -AsSecureString
$adminPassword = Read-Host "Enter admin password" -AsSecureString

.\azureResources.ps1 

.\peerings.ps1
