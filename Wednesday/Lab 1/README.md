# Lab 1 - Create a Windows Web Server with PowerShell DSC

1. Launch a Windows Server 2016 VM
2. Install the xWebAdministration DSC module on the server (e.g. *Install-Module xWebAdministration*)
3. Install IIS and a simple web page using DSC (use the WindowsWebServer.ps1 script in this repo)
4. Modify your network security group rules to permit HTTP from the outside world and verify you can view the default web page

### Notes

Windows PowerShell Desired State Configuration Overview
* https://msdn.microsoft.com/en-us/powershell/dsc/overview

PowerShell Gallery - xWebAdministration
* https://www.powershellgallery.com/packages/xWebAdministration/1.17.0.0

Opening ports to a VM in Azure using the Azure portal
* https://docs.microsoft.com/en-us/azure/virtual-machines/windows/nsg-quickstart-portal

Uploading a DSC Config to Azure Storage
* https://github.com/mikepfeiffer/azure-dsc-extention