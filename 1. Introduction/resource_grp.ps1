Disable-AZContextAutosave

$rg_name ="Powershell_visio" 
$Location ="North Europe"

New-AzResourceGroup -Name $rg_name -Location $Location


Remove-AzResourceGroup -Name "Powershell_visio"

$stoarageaccount= "powershellstorage99001"

New-AzStorageAccount 

$rg_name ="Powershell_visio2" 
$Location ="North Europe"
$AppId ="5e5db040-7775-4c3a-a111-f16494ecc64d"
$AppSecret ="CZg8Q~3YfFMQSGrvjWI_RUlgi6HmI40KV5O5ob-b"
$TenantID ="6859d358-eafd-4e0c-8647-592043db49b3"

$SecureSecret = $AppSecret | ConvertTo-SecureString -AsPlainText -Force 

$Credential = New-Object -TypeName System.Management. Automation.PSCredential `
-ArgumentList $AppId, $SecureSecret

connect-AzAccount -ServicePrincipal -Credential $Credential $Credential -Tenant $TenantID
New-AzResourceGroup -Name $rg_name -Location $Location



Remove-AzStorageAccount -Name "pspt001"

$accountname = "appstore020202" 
$accountkind = "StorageV2"
$accountSKU = "Standard_LRS"
$rg_name ="Powershell_visio" 
$Location ="North Europe"

$storageaccount = New-AzStorageAccount -ResourceGroupName $rg_name -Name $accountname -Location $Location -Kind $accountkind -SkuName $accountSKU

$accountname = "appstore020202" 
$accountkind = "StorageV2"
$accountSKU = "Standard_LRS"
$rg_name ="Powershell_visio" 
$Location ="North Europe"

$storageaccount = Get-AzStorageAccount -ResourceGroupName $rg_name -Name $accountname `
-Permission Blob

$ContainerName="data2"
New-AzStorageContainer -name $ContainerName -context $storageaccount.Context -Permission Blob -debug


Set-AzStorageContainer -Context 

Get-AzStorageAccount -ResourceGroupName $rg_name 

Remove-AzStorageAccount -Name "appstore020202" -ResourceGroupName $rg_name 