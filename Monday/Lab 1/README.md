# Lab 1 - Getting Started with Azure AD

1. Sign into the Azure AD portal (https://aad.portal.azure.com)
2. Active a free trial for Azure AD premium (main dashboard of the Azure AD portal)
3. Add a custom domain name to your directory (make it primary)
4. Startup and initialize your Cloud Shell environment

### Tips:

You can create an App Service Domain resource with your Azure Pass. This will allow you to register a custom domain name. It will also create a public DNS zone using the Azure DNS service. This will allow you to create verification records when setting up custom domains with Azure AD, App Service, Azure Storage, etc.

App Service Domains are very comparable to other domain registrars. Dot com's cost about $12. See if you can find a cheaper domain so you can save credits for other resources you deploy in your Azure Pass subscription. 


### Notes:

What is Azure AD?
* https://docs.microsoft.com/en-us/azure/active-directory/active-directory-whatis

Buy a custom domain name for Azure App Service
* https://docs.microsoft.com/en-us/azure/app-service/manage-custom-dns-buy-domain

Add a custom domain name to Azure Active Directory
* https://docs.microsoft.com/en-us/azure/active-directory/active-directory-domains-add-azure-portal

Quickstart for PowerShell in Azure Cloud Shell
* https://docs.microsoft.com/en-us/azure/cloud-shell/quickstart-powershell

Quickstart for Bash in Azure Cloud Shell
* https://docs.microsoft.com/en-us/azure/cloud-shell/quickstart