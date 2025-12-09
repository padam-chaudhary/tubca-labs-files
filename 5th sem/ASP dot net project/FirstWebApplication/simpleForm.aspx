<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="simpleForm.aspx.cs" Inherits="FirstWebApplication.simpleForm" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Register Form</title>
    <style type="text/css">
        .auto-style1 {
            height: 33px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>User Register Form</h1>
            <table>
                <tr>
                    <td class="auto-style1">
                        <asp:Label runat="server" ID="lblId" Text="ID" ForeColor="#0000ff"></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtId" runat="server"></asp:TextBox>
                      
                    </td>
                    <td> <asp:Button  ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" /></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" ID="lblName" Text="Name" ForeColor="#0000ff"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" ID="lblEmail" Text="Email" ForeColor="#0000ff"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" ID="lblGender" Text="Gender" ForeColor="#0000ff"></asp:Label>
                    </td>
                    <td>
                        <asp:RadioButton ID="rdoMale" GroupName="Gender" runat="server" Text="Male" />
                        <asp:RadioButton ID="rdoFemale" GroupName="Gender" runat="server" Text="Female" />
                        <asp:RadioButton ID="rdoOther" GroupName="Gender" runat="server" Text="Other" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align:center;">
                        <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnSubmit_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align:center;">
                        <asp:Label ID="lblResult" runat="server" ForeColor="Green"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
