# Lab 2 - Create VNet-to-VNet VPN

1. Create two new VMs in seperate VNETs and ensure those VNETs use completely seperate IPv4 address spaces
2. Add a gateway subnet to each vnet
3. Add a VPN gateway to each vnet
4. Add a connection object to build the VPN tunnel between vnets
5. Make sure you can ping across the tunnel from one server to the other
6. Delete both resource groups from your Azure Pass subscription when complete

### Notes

Configure a VNet-to-VNet connection using the Azure portal
* https://docs.microsoft.com/en-us/azure/vpn-gateway/vpn-gateway-howto-vnet-vnet-resource-manager-portal