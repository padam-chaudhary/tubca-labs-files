<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SumOf2Numbers.aspx.cs" Inherits="FirstWebApplication.SumOf2Numbers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Addition of two numbers</h1>
            <table>
                <tr>
                    <td><asp:Label runat="server" ID="lblFirstNumber" Text="First number" ForeColor="#0000ff"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtFirstNumber" runat="server"></asp:TextBox>
                    </td>
                    <tr>
                        <td><asp:Label runat="server" ID="lblSecondNumber" Text="Second number" ForeColor="#006600"></asp:Label></td>
                        <td>
                             <asp:TextBox ID="textSecondNumber" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Result</td>
                        <td>
                            <asp:TextBox ID="txtResult" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" />
                        </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
