# Lab 3 - Deploy Azure AD Connect Sync

1. You'll first need to deploy a Windows VM that can be used to simulate an on-prem domain controller. Deploy the <a href="https://github.com/mikepfeiffer/azure-domain-controller" target="_blank">Azure Domain Controller</a> ARM template to build this machine. (Note: it will take a good amount of time to launch the VM and to configure AD. Be patient. Grab a sandwich or something.)
2. RDP to the server and install the RSAT-ADDS module (Install-WindowsFeature rsat-adds)
3. Download and execute the PowerShell script in this repo to create 20-50 dummy users in your on-prem AD forest. Make sure the users UPN is set to your custom domain registered in AAD
4. Download and install Azure AD Connect Sync on your domain controller
5. Deploy a custom configuration of Azure AD Connect Sync and explore the options available. Make sure you deploy password hash synchronization and password write back
6. Verfiy that your on-prem users are showing up in AAD after the intial sync
7. Trying signing into the Azure portal with an on-prem users credentials

### Notes:

What is hybrid identity?
* https://docs.microsoft.com/en-us/azure/active-directory/hybrid/whatis-hybrid-identity

What is Azure AD Connect?
* https://docs.microsoft.com/en-us/azure/active-directory/hybrid/whatis-azure-ad-connect

What is password hash synchronization with Azure AD?
* https://docs.microsoft.com/en-us/azure/active-directory/hybrid/whatis-phs

Tutorial: Integrate a single AD forest using password hash sync (PHS)
* https://docs.microsoft.com/en-us/azure/active-directory/hybrid/tutorial-password-hash-sync

