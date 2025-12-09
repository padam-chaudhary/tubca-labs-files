<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SessionState.aspx.cs" Inherits="MyAspProject.SessionState" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Login form</h1>
            <table>
               
                 <tr>
     <td><asp:Label ID="lblUserName" runat="server" Text="UserName" ForeColor="#ff0000"></asp:Label></td>
     <td><asp:TextBox ID="txtUserName" runat="server"></asp:TextBox></td>
     </tr>
                 <tr>
     <td><asp:Label ID="lblPassword" runat="server" Text="Password" ForeColor="#ff0000"></asp:Label></td>
     <td><asp:TextBox ID="txtPassword" runat="server"></asp:TextBox></td>
 </tr>
          <tr>
     <td colspan="2">
         <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
         
     </td>
 </tr>

            </table>
        </div>
    </form>
</body>
</html>
