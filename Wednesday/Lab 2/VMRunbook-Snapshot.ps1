<#
This is a demo runbook that will snapshot all disks on 
Windows Virtual Machines in your Azure Subscription

Import Az Modules into Azure Automation Account
 - Az.Accounts
 - Az.Automation
 - Az.Compute
 - Az.Resources
#>

#Get service principal details from shared resources
$cred = Get-AutomationPSCredential -Name 'SPCreds'
$tenantId = Get-AutomationVariable -Name 'TenantId'

#Auth with service principal
Connect-AzAccount -ServicePrincipal -Credential $cred -Tenant $tenantId

$vms = Get-AzVM -ResourceGroupName webservers | 
  Where-Object {$_.StorageProfile.OsDisk.OsType -eq 'Windows'}

foreach($vm in $vms) {
  $vmName = $vm.name
  $vm.StorageProfile.DataDisks | ForEach-Object {
    $snapConfig = New-AzSnapshotConfig -SourceUri $_.ManagedDisk.id -Location 'westus2' `
    -CreateOption copy
    
    $snap = New-AzSnapshot -Snapshot $snapConfig -SnapshotName "$vmName-$($_.name)-snap" `
    -ResourceGroupName webservers
    
    Set-AzResource -ResourceId $snap.Id -Tag @{Created=(Get-Date).ToLongDateString()} -Force
  }
}