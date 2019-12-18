<#
This script demonstrates how to create a service principal
with the Az PowerShell module and use it to connect to Azure.

This script is not intended to be run interactively.
Use it as a guide.
#>

#Create a service principal
$cred= New-Object Microsoft.Azure.Commands.ActiveDirectory.PSADPasswordCredential `
-Property @{ StartDate=Get-Date; EndDate=Get-Date -Year 2030; Password='P@ssw0rd2020'}

$sp = New-AzAdServicePrincipal -DisplayName MySP -PasswordCredential $cred

#Sign in with service principal

$u = 'bd6107f4-34c2-4a01-aab7-d4861981eaa0'
$p = ConvertTo-SecureString 'P@ssw0rd2020' -AsPlainText -Force
$cred = New-Object System.Management.Automation.PSCredential ($u, $p)

Connect-AzAccount -ServicePrincipal -Credential $cred `
-Tenant '82c52ca8-e5e7-4d47-89a4-6697627717cf'
