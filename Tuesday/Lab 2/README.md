# Lab 2 - Conditional Access & Azure MFA

1. Navigate to the Azure AD portal and into Conditional Access (under Security)
2. Create a "Named Location" called "on-prem" and configure a custom address range using your own public IP address
2. Create a new conditional access policy
3. Assign the policy to one of your sync'd AD users
4. Select your custom web app on the Linux server as the cloud app for this policy
5. Configure the conditions so that the policy applies to any location and exludes your on-prem location
6. Configure the access controls so that grant access and require multi-factor auth are enabled
7. Enable and test the policy. Does it do what you expected? Modify the Named Location trusted IPs to verify your settings are being enforced

## Tips:

You can get your public IP from Google. Make sure that when you configure IP ranges for your trusted IPs that you use CIDR notation. Make sure you use a /32 for your individual IP address (e.g. 4.2.2.3/32).

### Notes:

What is conditional access in Azure Active Directory?
* https://docs.microsoft.com/en-us/azure/active-directory/manage-apps/application-proxy

Quickstart: Require MFA for specific apps with Azure Active Directory conditional access
* https://docs.microsoft.com/en-us/azure/active-directory/conditional-access/app-based-mfa
