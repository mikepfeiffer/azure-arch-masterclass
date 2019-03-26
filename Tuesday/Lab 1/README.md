# Lab 1 - Deploying Azure AD Application Proxy

1. Navigate to Enterprise Applications > Application Proxy in the AAD portal
2. Enable Application proxy for your AAD tenant
3. Deploy a Windows Server 2016 VM in the same VNET as your Linux Server ("Servers" resource group)
4. Install the application proxy connector on the Windows server
5. Install apache on the Linux server (hint: ssh to the server and run apt-get install apache2)
6. Create and publish a new app in the Application proxy section of the AAD portal. The goal is to reach the Apache welcome page on the Linux server through the Application proxy
6. Add permissions to a synced user or group from on-prem AD and grant access to the app
7. Navigate to the external url for your enterprise application and verify that you can sign in
8. Navigate to myapps.microsoft.com as the same user and ensure that your custom application is available on the screen


### Notes:

Remote access to on-premises applications through Azure Active Directory's Application Proxy
* https://docs.microsoft.com/en-us/azure/active-directory/manage-apps/application-proxy

How to provide secure remote access to on-premises applications
* https://docs.microsoft.com/en-us/azure/active-directory/active-directory-application-proxy-get-started
