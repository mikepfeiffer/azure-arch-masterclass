# Lab 1 - Blue-green Deployments with Azure Web Apps and Deployment Slots

Deploy a Web App to Azure:

1. Launch the "Visual Studio Community 2017 on Windows Server 2016 (x64)" Virtual Machine image to create a new VM
2. Create a new App Service in the Azure Portal (Web App) Make sure to select at least a Standard tier App Service Plan
3. Connect to your Visual Studio VM with RDP *Make sure you disable IESC*
4. Use Visual Studio to create a new Web Application
5. Go to file > new > project and create an empty ASP.NET website
6. Right click the project name (e.g. WebApplication1) in the Solution Explorer, go to add > add new item, and add an html page to the project called default.html
7. Add some text to the body of the html page
8. Right click the project and select Publish Web App
9. Deploy your site

Create a "Dev" Deployment Slot

1. In the portal, create a deployment slot in your Web App called "dev"
2. Make a change to the default.html page in your project
3. Deploy the updated version of your application to the "dev" deployment slot. Do this by right clicking the project and selecting Publish Web App - when the wizard comes up for publishing the app, create a new publish profile for your "dev" slot. Click on "Select Existing" for Microsoft App Service and then you'll be able to drill down into your Web App to select your "dev" deployment slot.
4. Navigate to your "dev" url to see the new version of the Web App
5. After you confirm you have two different versions of your Web App running in the prod and dev deployment slots, perform a deployment slot swap in the portal.  Swap using the "dev" site as the source to destination "production". This simulates moving a new version of your app into production
6. Navigate to the production url to confirm the new version of the app is running there
7. Keep your Visual Studio VM for the next lab!

### Notes

Set up staging environments in Azure App Service
* https://docs.microsoft.com/en-us/azure/app-service-web/web-sites-staged-publishing


