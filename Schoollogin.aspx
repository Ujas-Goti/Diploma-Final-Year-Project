<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Schoollogin.aspx.cs" Inherits="Schoollogin" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/stylesheet1.css" rel="stylesheet" />
    <link href="fontawesome-free-5.15.3-web/css/all.min.css" rel="stylesheet" />
    <title></title>
    <style>
        .d4{
            background-color: white;
            height: fit-content;
            width: 350px;
            border-radius: 7px 7px 7px 7px;
            box-shadow: 3px 3px 3px 3px;
        }
        .txt{
            border-radius:5px 5px 5px 5px;
            border-width:1px;
            transition-duration:0.5s;
        }
        .txt:focus{
            border-radius:5px 5px 5px 5px;
            border-width:1.5px;
        }
        .link{
            text-decoration:none;
        }
    </style>
</head>
<body class="body">
      <nav><div class="navbar1">
        <div align="center" class="lbl">
            <a href="Homepage.aspx" class="label">
                Dropout Analyzer
            </a>
        </div>
    </div></nav> 
    <form id="form1" runat="server">
        <br />
        <br />
        <div align="center">
            <div class="d4">
             <table align="center" cellpadding="10px" border="0">
            <tr>
                <td colspan="2" align="center">
                    <b>Login</b>
                </td>
            </tr>
            <tr>
                <td>
                    Username
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat ="server" CssClass="txt" AutoPostBack="True" OnTextChanged="TextBox1_TextChanged" Height="30px" Width="175px"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator" Font-Size="Small" ForeColor="Red" Display="Dynamic">*Required Field</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Password
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" TextMode="Password" CssClass="txt" runat="server" Height="30px" Width="175px"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="RequiredFieldValidator" Font-Size="Small" ForeColor="Red" Display="Dynamic">*Required Field</asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr>
                    <td align="center" colspan="2">
                        <asp:Button ID="Button1" type="button" runat="server" CssClass="button" Text="Login" OnClick="Button1_Click" Height="35px" Width="70px"/>
                        <br />
                        <br />
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/forgotpass.aspx" OnClick="forgetpass" CssClass="link">Forgot password?</asp:HyperLink>
                        <br />
                        <br />
                        <asp:Label ID="Label1" runat="server" Visible="False" Font-Size="Small" ForeColor="Red" ></asp:Label>
                    </td>
                </tr>
        </table>
        </div>
        </div>
    </form>
</body>
</html>
