# docker-ms-sql-server-with-initializer

You need to install `Docker` & `Docker compose` first.

After finishing instlation, then:

```bash
docker-compose build
docker-compose up
```

Now, DB server are running in your `localhost:1433`.

You can enter instance of DB server:

```bash
docker-compose exec sqlserver bash
```

And inside of instance, you can execute some SQL command for testing:

```bash
opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P PA2W0RDxxx -Q "SELECT name FROM sys.databases;"
```