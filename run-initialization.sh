sleep 90s

/opt/mssql-tools/bin/sqlcmd -S 127.0.0.1 -U sa -P cortosoDW! -Q "restore database contoso from disk = '/var/opt/mssql/data/ContosoRetailDW.bak' WITH MOVE 'ContosoRetailDW2.0' TO '/var/opt/mssql/data/ContosoRetailDW.mdf', MOVE 'ContosoRetailDW2.0_log' TO '/var/opt/mssql/data/ContosoRetailDW.ldf'"