# Lab 2 - Azure AD Account Setup and Role Based Access Control

1. Create a new general user account in Azure AD
2. Create an Ubuntu 18.04 virtual machine inside a resource group called "Servers"
3. Create a group in Azure AD called "VM Admins"
4. Add your new Azure AD account to the VM Admins group
5. Use role based access control to give the VM Admins group explicit permissions to the "Servers" resource group. Assign the "Virtual Machine Contributor" role to the VM Admins group
6. Sign into the portal as your new Azure AD user. Validate that youcan only perform basic management tasks on VMs in the Servers resource group. Try to create a new resource group. Does it work?

### Extra Credit:

Do this as your Azure AD global admin:

1. Run the PowerShell script in this repo (New-CustomRbacRole.ps1) inside your Cloud Shell instance. This will create a new custom role called 'Virtual Machine Operator'. Review the script to determine how the role is configured
2. Reconfigure the role based access control configuration on the Servers resource group.  Assign the new custom 'Virtual Machine Operator' role to the VM Admins group.

Now sign into the portal using the general Azure AD account that is a member of VM Admins.

1. Shutdown the Linux VM in the Servers RG and observe what happens.

### Tips:

Use different browsers and/or in-private-icognito browser sessions to test logging into the Azure AD portal as different users.

### Command syntax for running the script:

Get your subscription id:
Get-AzSubscription

Run the script:
/home/your-username-goes-here/New-CustomRbacRole.ps1 -SubscriptionId your-subscription-id-goes-here
  
### Notes:

Understanding Resource Access in Azure
* https://docs.microsoft.com/en-us/azure/active-directory/active-directory-understanding-resource-access

Add new users to Azure Active Directory
* https://docs.microsoft.com/en-us/azure/active-directory/active-directory-users-create-azure-portal

Assign a user to administrator roles in Azure Active Directory
* https://docs.microsoft.com/en-us/azure/active-directory/active-directory-users-assign-role-azure-portal

Understanding Role-Based Access Control
* https://docs.microsoft.com/en-us/azure/active-directory/role-based-access-control-what-is

Implementing Custom roles for Azure RBAC
* https://docs.microsoft.com/en-us/azure/active-directory/role-based-access-control-custom-roles
