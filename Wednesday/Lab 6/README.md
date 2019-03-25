# Lab 2 - Geo-route incoming traffic to your Azure Web App

Create two Azure Web Apps:

* Create a new resource group
* Add a new Web App to the resource group in West US. Name the app so you can tell where its provisioned (e.g. 23WebAppWest)
* Add a new Web App to the resource group in East US. Name the app so you can tell where its provisioned (e.g. 23WebAppEast)

Do this for each Web App:

1. Navigate to the web app in the Azure Portal
2. Open the App Service Editor for the web app
3. Add a message to the body of the hostingstart.html page that displays the Azure region (either east or west)
4. Visit to your Web App using the public URL (you can get this in the portal) and ensure you see your webpage with the correct region listed on the page

Create a Traffic Manager Profile:

1. In the portal, search for Traffic Manager profile
2. Create a new profile for your Web Apps and ensure the routing method is set to "performance"
3. Add external endpoints for both the west and east Web Apps. Make sure to add them as "Azure" endpoints instead of external
4. Visit your traffic manager URL to view the Web App. Did it route you to the correct location? If not, you may need to flush your local DNS cache.
5. Delete all resource groups from your Azure Pass subscription when complete

### Notes

Overview of Traffic Manager
* https://docs.microsoft.com/en-us/azure/traffic-manager/traffic-manager-overview

Create a Traffic Manager profile
* https://docs.microsoft.com/en-us/azure/traffic-manager/traffic-manager-create-profile

Configure the performance traffic routing method
* https://docs.microsoft.com/en-us/azure/traffic-manager/traffic-manager-configure-performance-routing-method
