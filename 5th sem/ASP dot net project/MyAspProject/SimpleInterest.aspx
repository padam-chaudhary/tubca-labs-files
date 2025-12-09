<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SimpleInterest.aspx.cs" Inherits="MyAspProject.SimpleInterest" %>

<!DOCTYPE html>
<html>
<head>
    <title>Simple Interest Calculator</title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Simple Interest Calculator</h2>
        <asp:Label ID="lblPrincipal" runat="server" Text="Principal:"></asp:Label>
        <asp:TextBox ID="txtPrincipal" runat="server"></asp:TextBox><br />

        <asp:Label ID="lblRate" runat="server" Text="Rate (%):"></asp:Label>
        <asp:TextBox ID="txtRate" runat="server"></asp:TextBox><br />

        <asp:Label ID="lblTime" runat="server" Text="Time (Years):"></asp:Label>
        <asp:TextBox ID="txtTime" runat="server"></asp:TextBox><br /><br />

        <asp:Button ID="btnCalculate" runat="server" Text="Calculate" OnClick="btnCalculate_Click" />
    </form>
</body>
</html>
