Configuration WindowsWebServer { 

    Import-DscResource –ModuleName xWebAdministration

    node localhost {

        WindowsFeature IIS  
        {  
            Ensure          = 'Present'
            Name            = 'Web-Server'
        } 

        WindowsFeature ASPNET
        {  
            Ensure          = 'Present'
            Name            = 'Web-Asp-Net45'
            DependsOn       = '[WindowsFeature]IIS'
        }
        
        WindowsFeature ASPNETFramework  
        {  
            Ensure          = 'Present'
            Name            = 'NET-Framework-45-ASPNET'
            DependsOn       = '[WindowsFeature]IIS'
        }         

        WindowsFeature IISManagement  
        {  
            Ensure          = 'Present'
            Name            = 'Web-Mgmt-Console'
            DependsOn       = '[WindowsFeature]IIS'
        } 
  
        xWebsite DefaultSite   
        {  
            Ensure          = 'Present'
            Name            = 'Default Web Site'
            PhysicalPath    = 'C:\inetpub\wwwroot' 
            DependsOn       = '[WindowsFeature]IIS'
        }

        File HomePage {
            Type = 'file'
            DestinationPath = 'C:\inetpub\wwwroot\default.aspx'
            Contents = '<%@ Page Trace="true"  Language="C#" ContentType="text/html" ResponseEncoding="utf-8" %>'
            DependsOn       = '[xWebsite]DefaultSite'
        }
    }

}

WindowsWebServer

Start-DscConfiguration -Path .\WindowsWebServer -Wait
