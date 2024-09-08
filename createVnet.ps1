az login
$rg                    = Read-Host "Enter rg name"
$coreServicesLocation  = Read-Host "Enter core services vnet location" 
$manufacturingLocation = Read-Host "Enter manufacturing vnet location"
$researchLocation      = Read-Host "Enter reseach vnet location"
.\CoreServicesVnet.ps1  --no-wait
.\ManufacturingVnet.ps1 --no-wait
.\ResearchVnet.ps1      --no-wait
