<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserManageForm.aspx.cs" Inherits="MyAspProject.AdditionForm" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Management</title>
    <style>
        .gridview{
            width:100%;
        }
        .gridview th{
            background-color:aquamarine;
            color:black;
            text-align:center;
        }
        .gridview tr:nth-child(2n+1){
            background-color:red;
        }
        .border{
            border-color:red;
        }
            .border td {
                border-color: blue;
                border-width: 1px;
                border-style: solid;
            }
        .gridview tr:hover {
            background-color: lightblue;
            cursor:pointer;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table Cssclass="border">
                <tr>
                    <td><asp:Label ID="lblID" runat="server" Text="ID"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtID" runat="server"></asp:TextBox>
                        <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
                    </td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblFnum" runat="server" Text="Name" ForeColor="#990000"></asp:Label></td>
                    <td><asp:TextBox ID="txtName" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblEmail" runat="server" Text="Email" ForeColor="#ff0000"></asp:Label></td>
                    <td><asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Gender</td>
                    <td>
                        <asp:RadioButtonList ID="rbtnGender" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Text="Male" Value="Male" Selected="True"></asp:ListItem>
                            <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="btnAdd" runat="server" Text="Save" OnClick="btnAdd_Click" />
                        <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
                        <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClientClick="return confirm('Are you sure you want to delete this item?');" OnClick="btnDelete_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2"><asp:Label ID="lblMessage" runat="server"></asp:Label></td>
                </tr>
            </table>
            <asp:GridView ID="gvUserInfo" runat="server" AutoGenerateColumns="true" CssClass="gridview"></asp:GridView>
        </div>
    </form>
</body>
</html>
