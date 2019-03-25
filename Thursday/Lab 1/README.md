# Lab 1 - Deploy a Load Balancer on Azure

1. Launch the load balancer ARM template from [here](https://github.com/AzureInterface/quickstart/tree/master/azure-load-balancer)
2. Verify you can connect remotely via NAT rules
3. Set up a basic web server / web page on each VM
4. Create a HTTP probe for the load balancer
5. Create a load balancer rule for HTTP
6. Verify you can visit your website through the load balancer
7. Verify your load balanced site still works after killing one of the web servers
8. Delete the resource group from your Azure Pass subscription when complete

### Notes

Azure Load Balancer overview
* https://docs.microsoft.com/en-us/azure/load-balancer/load-balancer-overview

Creating an Internet-facing load balancer using the Azure portal
* https://docs.microsoft.com/en-us/azure/load-balancer/load-balancer-get-started-internet-portal
