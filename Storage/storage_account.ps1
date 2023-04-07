$accountname = "appstore020202" 
$accountkind = "StorageV2"
$accountSKU = "Standard_LRS"
$rg_name ="Powershell_visio" 
$Location ="North Europe" 
$ContainerName="data"

# Storage Account Creation

$storageaccount = New-AzStorageAccount -ResourceGroupName $rg_name -Name $accountname -Location $Location -Kind $accountkind -SkuName $accountSKU

# Blob Creation

$storageaccount = Get-AzStorageAccount -ResourceGroupName $rg_name -Name $accountname -Permission Blob

New-AzStorageContainer -name $ContainerName -context $storageaccount.Context -Permission Blob -debug