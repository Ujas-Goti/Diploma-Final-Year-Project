<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminlogin.aspx.cs" Inherits="adminlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <br />
        <br />
        <table align="center" cellpadding="15px" border="1">
            <tr>
                <td colspan="2" align="center">
                    <b>Admin</b>
                </td>
            </tr>
            <tr>
                <td>
                    Username
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat ="server" AutoPostBack="True" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Password
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" TextMode="Password" runat="server"></asp:TextBox>
                </td>
            </tr>
             <tr>
                    <td align="center" colspan="2">
                        <asp:Button ID="Button1" type="button" runat="server"  Text="Login" OnClick="Button1_Click"/>
                        <br />
                        <br />
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/forgotpass1.aspx" OnClick="forgetpass">Forgot password</asp:HyperLink>
                        <br />
                        <br />
                        <asp:Label ID="Label1" runat="server" Visible="False" ></asp:Label>
                    </td>
                </tr>
        </table>
        </div>
    </form>
</body>
</html>
