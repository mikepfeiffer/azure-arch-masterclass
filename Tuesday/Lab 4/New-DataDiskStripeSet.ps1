[CmdletBinding()]
param(
    [Parameter(Mandatory=$false)]
    [string]
    $storagePoolName = 'DataDiskPool',

    [Parameter(Mandatory=$false)]
    [string]
    $diskName = 'DataDiskStripeSet'
)

Write-Verbose 'Creating eventlog source'
New-EventLog -LogName Application -Source DataDiskScript -ErrorAction SilentlyContinue

try {
    Write-Verbose 'Retrieving poolable data disks'
    $pool = Get-PhysicalDisk -FriendlyName 'Msft Virtual Disk' -ErrorAction Stop
}
catch {
    Write-Verbose 'No poolable data disks found'
    $pool = $null
    
    Write-EventLog -LogName Application -Source DataDiskScript -EntryType Error -EventId 0 -Message 'Get-PhysicalDisk -CanPool $true failed. No disks available'
    break
}

if($pool.count -gt 1) {

    Write-Verbose "Found $($pool.count) data disks...proceeding"

    $poolParams = @{
        FriendlyName = $storagePoolName
        PhysicalDisks = $pool
        StorageSubSystemUniqueId = (Get-StorageSubSystem -FriendlyName '*Storage*').uniqueID
    }

    Write-Verbose 'Creating a new storage pool'
    New-StoragePool @poolParams

    $vDiskParams = @{
        StoragePoolFriendlyName = $storagePoolName
        FriendlyName = $diskName
        ResiliencySettingName = 'Simple'
        UseMaximumSize = $true
        NumberOfColumns = $pool.count
        Interleave = 65536
    }

    Write-Verbose 'Creating a new virtual disk'
    $disk = New-VirtualDisk @vDiskParams | Get-Disk

    Write-Verbose 'Initializing disk'
    Initialize-Disk -Number $disk.Number

    Write-Verbose 'Creating a new partition'
    $partition = New-Partition -DiskNumber $disk.Number -UseMaximumSize -AssignDriveLetter

    Write-Verbose 'Formatting partition'
    Format-Volume -DriveLetter $partition.DriveLetter -FileSystem NTFS -NewFileSystemLabel DataDiskStore -AllocationUnitSize 65536 -Confirm:$false

    Write-Verbose 'Saving success message to the application log'
    Write-EventLog -LogName Application -Source DataDiskScript -EntryType Information -EventId 1 -Message "Data disk stripe set created successfully and available as drive $($partition.DriveLetter):\"
}
else {
    Write-Verbose 'Not enough data disks available for striping'
    Write-EventLog -LogName Application -Source DataDiskScript -EntryType Error -EventId 0 -Message 'Unable to stripe data disks. You need at least two data disks to create a stripe set.'
}
