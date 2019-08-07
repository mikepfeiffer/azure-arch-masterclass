# Lab 4 - Configure Alerts Based on Metrics and Performance

1. Launch (or resuse) a Windows Server 2016 virtual machine
2. Navigate to the VM properties in the Azure Portal > Monitoring > Metrics
3. Select the 'Percentage CPU' metric for the VM, set the aggregation to 'Average'
4. Click on the 'Create Alert Rule' button
5. Configure the Alert Condition to fire when the average CPU utilization greater than or equal to 50%
6. Set both the aggregation granulatiry and frequency to 1 minute
7. Create an action group and configure an email action when the alert fires (use a valid email account you have access to)
8. Fill out the alert details and set the severity to '1'
9. RDP to the VM
10. Run the following powershell commands:

```

Start-BitsTransfer -Source https://github.com/mikepfeiffer/ps-cpu-stress/raw/master/CpuStress.psm1 -Destination c:\
Import-Module c:\cpustress.psm1

```

11. Invoke the New-CpuStress function to simulate CPU load:

```

New-CpuStress -CoreCount 4

```

12. After you receive the alert notification via email, stop the cpu stress utility:

```

Get-CpuStress | Stop-CpuStress

```

### Notes:

Overview of alerts in Microsoft Azure
https://docs.microsoft.com/en-us/azure/azure-monitor/platform/alerts-overview

Manage alert instances
https://docs.microsoft.com/en-us/azure/azure-monitor/platform/alerts-managing-alert-instances
