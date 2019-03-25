# Lab 3 - Setup VNet-to-VNet Peering

1. Create two new VMs in seperate VNETs (in the same region) and ensure those VNETs use completely seperate IPv4 address spaces. For example, use the 192.168.0.0/16 range for the first VNET, and 10.0.0.0/16 for the other VNET
2. Create a peering relationship between both VNETs
5. Make sure you can ping across the peering from one server to the other (disable the windows firewall)
6. Delete the resources from your Azure Pass subscription when complete

### Notes

Virtual network peering
* https://docs.microsoft.com/en-us/azure/virtual-network/virtual-network-peering-overview

Create, change, or delete a virtual network peering
* https://docs.microsoft.com/en-us/azure/virtual-network/virtual-network-manage-peering
