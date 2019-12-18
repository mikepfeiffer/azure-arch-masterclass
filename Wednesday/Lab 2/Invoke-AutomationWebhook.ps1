<#
Invoking the VMRunbook-Stop runbook
#>

$uri = "https://s4events.azure-automation.net/webhooks?token=1xc1iDzrkLc7Wqot341GzameBhYavv0msLwkQQo%2bB88%3d"

$vms  = @(
            @{ Name="web1";ResourceGroup="webservers"},
            @{ Name="web2";ResourceGroup="webservers"}
        )

$body = ConvertTo-Json -InputObject $vms
$header = @{ message="Started by Mike Pfeiffer"}

Invoke-WebRequest -Method Post -Uri $uri -Body $body -Headers $header