<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="WebFormSqlServer.SignUp" %>

<!DOCTYPE html>
<html>
<head>
    <title>Sign Up</title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Sign Up</h2>
        <div>
            <label>Username:</label>
            <asp:TextBox ID="txtUsername" runat="server" />
        </div>
        <div>
            <label>Email:</label>
            <asp:TextBox ID="txtEmail" runat="server" />
        </div>
        <div>
            <label>Password:</label>
            <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" />
        </div>
        <div>
            <asp:Button ID="btnSignUp" Text="Sign Up" OnClick="btnSignUp_Click" runat="server" />
        </div>
        <asp:Label ID="lblMessage" runat="server" ForeColor="Red" />
    </form>
</body>
</html>
