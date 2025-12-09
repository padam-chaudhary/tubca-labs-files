## dotConnect for SQL Server

[dotConnect for SQL Server](https://www.devart.com/dotconnect/sqlserver/) is an enhanced data provider for SQL Server that builds on ADO.NET technology and SqlClient to present a complete solution for developing SQL Server-based database applications.

The provider works with .NET Frameworks 2.0+, .NET Core 2.0+, .NET 5+.

It includes base-class-based provider model, provider factories, connection string builder, metadata schemas, asynchronous commands, pooling enhancements, batch update support, provider-specific types, server enumeration, database change notification support and so on.

More information at [dotConnect for SQL Server](https://www.devart.com/dotconnect/sqlserver/).

### Compatibility
-------------

The following table show which version of this package to use with which version of frameworks.

| Frameworks | Version support
|-|-
| .NET | 9, 8, 7, 6, 5
| .NET Core | 3, 2
| .NET Framework | 4.8, 4.7, 4.6.2, 4.6.1

More information [here](https://www.devart.com/dotconnect/sqlserver/compatibility.html)

### Installation
------------

For projects, using general ADO.NET functionality of dotConnect for SQL Server, you need to install the [Devart.Data.SqlServer](https://www.nuget.org/packages/Devart.Data.SqlServer/) package. Execute the following command in the Package Manager Console:

```sh
Install-Package Devart.Data.SqlServer
```

## License

See [pricing options](https://www.devart.com/dotconnect/sqlserver/ordering.html) for ordering.

The NuGet package initiates a 30-day free trial automatically, so no additional action is required.

### Usage
-----
In this example, a new instance of the SqlServerConnection class (part of the Devart.Data.SqlServer namespace) is created.
```csharp=
using Devart.Data.SqlServer;
...
SqlConnection sqlConnection = new SqlConnection();
sqlConnection1.Server = "127.0.0.1";
sqlConnection1.UserId = "user";
sqlConnection1.Password = "mypassword";
sqlConnection1.Database = "Test";
```
This snippet simplifies the [SQL Server connection](https://www.devart.com/dotconnect/sqlserver/connect-sql-server-in-net.html) setup by directly assigning a connection string to the ConnectionString property of the SqlServerConnection object

```csharp=
connection.ConnectionString = "Server=127.0.0.1;UserId=user;Password=mypassword;";
```
#### ASP.NET Core and Blazor

Configuration File Snippet (appsettings.json):
```csharp=
{
  "ConnectionStrings": {
    "DefaultConnection": "Server=127.0.0.1;UserId=user;Password=mypassword;"
   }
}
```

Dependency Injection of IConfiguration:

```csharp=
private readonly IConfiguration configuration;

public YourController(IConfiguration config) 
{
    configuration = config;
}
```

Retrieving a Connection String:

```csharp=
var connectionString = configuration.GetConnectionString("DefaultConnection");
var connection = new SqlServerConnection(connectionString);
```

## Key Features

* **Easy Connection:** Allows your application to work with SQL Server.
* **Performance:** Uses many SQL Server-specific performance features & optimizations to ensure the highest performance.
* **Monitoring:** Allows per-component tracing of database events with a free dbMonitor application.
* **Security:** Supports various encryption ciphers, SSL and SSH connections, etc.
* **Support and updates:** Enjoy dedicated support team for prompt issue resolution and regular updates to keep your software running smoothly and securely.

## Support Area

* [Support](https://www.devart.com/dotconnect/sqlserver/support.html)
* [Documentation](https://docs.devart.com/dotconnect/sqlserver/GettingStarted.html)
* [Request form](https://www.devart.com/company/contactform.html?category=1&product=dotconnect/sqlserver)
* [Feedback page](https://www.devart.com/dotconnect/sqlserver/feedback.html)
* [Product history](https://www.devart.com/dotconnect/sqlserver/history.html)

## More Resources

* [Blog about dotConnect](https://blog.devart.com/category/products/ado-net-data-providers)
* [Devart Website](https://www.devart.com/)