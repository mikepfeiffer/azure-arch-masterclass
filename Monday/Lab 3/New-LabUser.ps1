[CmdletBinding()]
param(
	[Parameter(Position=0, Mandatory=$false)]
	[System.Int32]
	$count = 1,
	
	[Parameter(Position=2, Mandatory=$true)]
	[System.String]
	$Password,

	[Parameter(Position=3, Mandatory=$false)]
	[System.String]
	$UpnSuffix = [System.DirectoryServices.ActiveDirectory.Forest]::GetCurrentForest().RootDomain.Name,

	[Parameter(Position=4, Mandatory=$false)]
	[System.String]
	$OrganizationalUnit = ("CN=users," + ([ADSI]"LDAP://RootDSE").defaultNamingContext)
)


$webClient = New-Object System.Net.WebClient
$user = $webClient.DownloadString('https://raw.githubusercontent.com/mikepfeiffer/ExchangeLab/master/users.csv')
$users = $user | ConvertFrom-Csv
$userpwd = ConvertTo-SecureString -AsPlainText $password -Force

1..$count | %{
	$r1 = Get-Random -Min 1 -Maximum 1000
	$r2 = Get-Random -Min 1 -Maximum 1000
		
	$firstname = $users[$r1].firstname
	$lastname = $users[$r2].lastname
		
	$upn = "$($firstname[0])$lastname@$UpnSuffix".ToLower()
	$name = "$firstname $lastname"
	$alias = "$($firstname[0])$lastname".ToLower()
            

    New-ADUser -Name $name `
    -DisplayName $name `
    -GivenName $firstname `
    -Surname $lastname `
    -Description $name `
    -Office 'Azure Lab' `
    -UserPrincipalName $upn `
    -SamAccountName $alias `
    -AccountPassword $userpwd `
    -ChangePasswordAtLogon $false `
    -Path $OrganizationalUnit `
    -EmailAddress $upn `
    -Enabled $true `
    -PasswordNeverExpires $true `
    -PassThru	    
}    
	
<#
	.SYNOPSIS
		This function creates AD users intended for lab use.

	.DESCRIPTION
		This function generates random user names for AD users using a CSV file.
		The CSV file used to provide the names contains 1000 unique, commonly used,
		first and last names provided by the US Census Bureau.

	.PARAMETER  Count
		Specifies the number of users to create. The default value is 1.

	.PARAMETER  Password
		The password for the Active Directory account.

		
	.PARAMETER  UPNSuffix
		The UPN suffix for the Active Directory user. If not provided, the Active
		Directory root domain name will be used.
		
	.PARAMETER  OrganizationalUnit
		Specifies the OU for the Active Directory account. If no value is provided,
		the account will be created in the default users container.

	.EXAMPLE
		New-LabUser -Count 5 -Password P@ssw0rd2016
		
		Description
		-----------
		Creates 5 AD users using random user names.				

#>
