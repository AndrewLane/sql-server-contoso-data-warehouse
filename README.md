# sql-server-contoso-data-warehouse
Containerized SQL Server with the Contoso Data Warehouse pre-loaded

Database backup file of Microsoft Contoso BI Demo Dataset is too big to go into GitHub, but it can be downloaded from here: https://www.microsoft.com/en-us/download/details.aspx?id=18279

## Database Info

```
Database Name: contoso
User Name: sa
Password: cortosoDW!
Port: 1533 (if using the instructions below)

Version:
Microsoft SQL Server 2017 (RTM-CU22-GDR) (KB4583457) - 14.0.3370.1 (X64)
```

## Pulling and running the container

```
docker run --name contosodatawarehouse -it -p 1533:1433 ghcr.io/andrewlane/contoso-sql-server-docker/contoso-sql-server:latest
```

Wait 2 minutes after the container launches, and then the last line of your container output should start with:
```
RESTORE DATABASE successfully processed...
```