<%@ Page Language="C#" AutoEventWireup="true" %>
<%@ Import Namespace="System.Configuration" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.IO" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Configuration Test</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 20px; }
        .result { margin: 20px 0; padding: 10px; background-color: #f5f5f5; border: 1px solid #ddd; }
        .success { color: green; }
        .error { color: red; }
        pre { background-color: #eee; padding: 10px; overflow: auto; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1>ASP.NET Configuration Test</h1>
        
        <div class="result">
            <h2>Web.config Content</h2>
            <pre><%= Server.HtmlEncode(File.ReadAllText(Server.MapPath("~/web.config"))) %></pre>
        </div>
        
        <div class="result">
            <h2>Connection Strings in Configuration</h2>
            <% try { %>
                <ul>
                <% foreach (ConnectionStringSettings css in ConfigurationManager.ConnectionStrings) { %>
                    <li><strong><%= css.Name %>:</strong> <%= css.ConnectionString %></li>
                <% } %>
                </ul>
            <% } catch (Exception ex) { %>
                <p class="error">Error: <%= ex.Message %></p>
            <% } %>
        </div>
        
        <div class="result">
            <h2>Test AspDotNetConn Connection</h2>
            <% try { 
                var conn = ConfigurationManager.ConnectionStrings["AspDotNetConn"];
                if (conn != null) {
                    using (SqlConnection sqlConn = new SqlConnection(conn.ConnectionString)) {
                        try {
                            sqlConn.Open();
                            Response.Write("<p class=\"success\">Connection successful!</p>");
                            sqlConn.Close();
                        } catch (Exception ex) {
                            Response.Write("<p class=\"error\">Connection failed: " + ex.Message + "</p>");
                        }
                    }
                } else {
                    Response.Write("<p class=\"error\">AspDotNetConn connection string not found in configuration.</p>");
                }
            } catch (Exception ex) { %>
                <p class="error">Error: <%= ex.Message %></p>
            <% } %>
        </div>
        
        <div class="result">
            <h2>Configuration File Details</h2>
            <% try { %>
                <p><strong>Configuration file path:</strong> <%= AppDomain.CurrentDomain.SetupInformation.ConfigurationFile %></p>
                <p><strong>Web.config exists in root:</strong> <%= File.Exists(Server.MapPath("~/web.config")) %></p>
                <p><strong>Application Path:</strong> <%= Request.PhysicalApplicationPath %></p>
            <% } catch (Exception ex) { %>
                <p class="error">Error: <%= ex.Message %></p>
            <% } %>
        </div>
    </form>
</body>
</html>