# Lab 4 - Working with Virtual Machine Storage

Create a VM with *UN-MANAGED* storage:

1. Create an Windows Server 2016 VM and make sure to select the UN-MANAGED (Advanced/Non-default) storage option
2. Review the storage configuration after the build is complete (take a look at the virtual disks, see if you can locate the VHD files)
3. Expand the OS disk to the maximum size

Create a VM with *MANAGED* storage:

1. Create an Windows Server 2016 VM (use the default storage option)
2. Add two data disks to your VM each 1 TB in size
3. Stripe the data disks using the PowerShell script in this repo (New-DataDiskStripeSet.ps1) to create a 2 TB volume in Windows

### Tips:

You need to run the New-DataDiskStripeSet.ps1 from Windows. You can either RDP to the server or use the custom script extention.

### Notes:

Resize virtual machines
* https://azure.microsoft.com/en-us/blog/resize-virtual-machines/

How to expand the OS drive of a Virtual Machine in an Azure Resource Group
* https://docs.microsoft.com/en-us/azure/virtual-machines/windows/expand-os-disk

How to attach a data disk to a Windows VM in the Azure portal
* https://docs.microsoft.com/en-us/azure/virtual-machines/windows/attach-disk-portal

Azure Disk Striping
* https://docs.microsoft.com/en-us/azure/storage/storage-premium-storage-performance#disk-striping
