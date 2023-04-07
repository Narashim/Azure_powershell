$rg_name ="Powershell_visio" 
$Location ="North Europe"

#To create the resource group
New-AzResourceGroup -Name $rg_name -Location $Location

#Remove the Resource Group
Remove-AzResourceGroup -Name "Powershell_visio"
