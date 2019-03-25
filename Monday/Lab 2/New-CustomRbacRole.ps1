    [CmdletBinding()]
    param(
        [Parameter(Mandatory=$true)]
        [string]
        $SubscriptionId
    )

    #Get the existing role definition for VM contributor
    $role = Get-AzRoleDefinition "Virtual Machine Contributor"

    #Customize the existing role adding only the specific actions our admins need
    $role.Id = $null
    $role.Name = "Virtual Machine Operator"
    $role.Description = "Can monitor and restart virtual machines."
    $role.Actions.Clear()
    $role.Actions.Add("Microsoft.Storage/*/read")
    $role.Actions.Add("Microsoft.Network/*/read")
    $role.Actions.Add("Microsoft.Compute/*/read")
    $role.Actions.Add("Microsoft.Compute/virtualMachines/start/action")
    $role.Actions.Add("Microsoft.Compute/virtualMachines/restart/action")
    $role.Actions.Add("Microsoft.Authorization/*/read")
    $role.Actions.Add("Microsoft.ResourceHealth/availabilityStatuses/read")
    $role.Actions.Add("Microsoft.Resources/subscriptions/resourceGroups/read")
    $role.Actions.Add("Microsoft.Insights/alertRules/*")
    $role.Actions.Add("Microsoft.Support/*")
    $role.AssignableScopes.Clear()
    $role.AssignableScopes.Add("/subscriptions/$($SubscriptionId)")

    #Assign the role to the subscription making it available for assignment on RGs and Resources
    New-AzRoleDefinition -Role $role