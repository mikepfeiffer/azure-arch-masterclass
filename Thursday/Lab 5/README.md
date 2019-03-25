# Lab 5: Create an Azure SQL Auto-Failover Group

1. Create a new Azure SQL database in the Azure portal on a logical SQL server in the West US 2 region
2. Navigate to the database resource in the portal, under Settings > Geo Replication
3. Create a replica for your database in the Central US region (readable)
4. After the replica has been created, navigate to the properties of your logical SQL Server in West US 2
5. Go to Settings > Failover Groups
6. Create a new failover group for your database and configure the logical SQL server in Central US as the secondary server
7. After the failover group is built, invoke a manual failover in the properties of the failover group

### Notes:

Use auto-failover groups to enable transparent and coordinated failover of multiple databases
* https://docs.microsoft.com/en-us/azure/sql-database/sql-database-auto-failover-group

Creating and using active geo-replication
* https://docs.microsoft.com/en-us/azure/sql-database/sql-database-active-geo-replication