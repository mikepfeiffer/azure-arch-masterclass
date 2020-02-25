# Lab 1 - Deploying Azure AD Application Proxy

1. Deploy a Linux Server in the same VNET as your domain controller (use your existing VNET)
2. Import the registry settings in update.reg and reboot the server
2. Install the application proxy connector on the Windows server
3. Install apache on the Linux server (hint: ssh to the server and run "sudo apt-get install apache2 -y")
4. Create and publish a new app in the Application proxy section of the AAD portal. The goal is to reach the Apache welcome page on the Linux server through the Application proxy
5. Grant access to the app to one of your sync'ed user (enterprise apps section)
6. Navigate to the external url for your enterprise application and verify that you can sign in
7. Navigate to myapps.microsoft.com as the same user and ensure that your custom application is available on the screen


### Notes:

Remote access to on-premises applications through Azure Active Directory's Application Proxy
* https://docs.microsoft.com/en-us/azure/active-directory/manage-apps/application-proxy

How to provide secure remote access to on-premises applications
* https://docs.microsoft.com/en-us/azure/active-directory/active-directory-application-proxy-get-started
