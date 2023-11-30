<%@ Page Language="C#" AutoEventWireup="true" CodeFile="forgotpass1.aspx.cs" Inherits="forgotpass1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/stylesheet1.css" rel="stylesheet" />
    <link href="fontawesome-free-5.15.3-web/css/all.min.css" rel="stylesheet" />
    <title></title>
    <style>
        .d6 {
            background-color: white;
            height: fit-content;
            width: 400px;
            border-radius: 7px 7px 7px 7px;
            box-shadow: 3px 3px 3px 3px;
            margin-left: 0px;
        }
        .auto-style1 {
            height: 645px;
        }
    </style>
</head>
<body class="body">
    <form id="form1" runat="server" class="auto-style1">
        <nav><div class="navbar1">
        <div align="center" class="lbl">
            <a href="Homepage.aspx" class="label">
                Dropout Analyzer
            </a>
        </div>
     </div></nav>
        <br />
        <br />
        <div align="center">
            <div class="d6">

        <br />
        <asp:Panel ID="Panel1" runat="server" Visible="False">
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Button ID="Button1" CssClass="button" Width="100px" Height="35px" runat="server" OnClick="Button1_Click" Text="Send OTP" />
            <br />
            <br />
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" Visible="False">
            Otp Sent!!<br />
            <br />
            <asp:TextBox ID="TextBox3" Height="25px" Width="200px" runat="server"></asp:TextBox>
            &nbsp;
            <asp:Button ID="Button3" CssClass="button" Width="100px" Height="35px" runat="server" Text="Verify" OnClick="Button3_Click" />

            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Font-Size="Small" ForeColor="Red" Visible="False"></asp:Label>
            <br />

            <br />

        </asp:Panel>
        <asp:Panel ID="Panel3" runat="server" Visible="False">
            New Password : <asp:TextBox ID="TextBox1" Height="25px" Width="200px" TextMode="Password" runat="server"></asp:TextBox>
            <br />
            <br />
            Confirm Password : <asp:TextBox ID="TextBox2" Height="25px" Width="200px" TextMode="Password" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox1" ControlToValidate="TextBox2" ErrorMessage="CompareValidator" ForeColor="Red" Display="Dynamic" Font-Size="Small">*Passwords don&#39;t match</asp:CompareValidator>
            <br />
            <br />
            <asp:Button ID="Button2" CssClass="button" Width="100px" Height="35px" runat="server" Text="Reset" OnClick="Button2_Click" />
            <br />
            <br />
        </asp:Panel>
        <asp:Panel ID="Panel4" runat="server" Visible="False">
            <asp:Label ID="Label2" runat="server" Text="Password Updated."></asp:Label>
            <br />
            <br />
            <asp:Button ID="Button4" runat="server" Width="150px" Height="35px" CssClass="button" OnClick="Button4_Click" Text="Back to Login page" />
            <br />
            <br />
        </asp:Panel>
            </div>
        </div>
        
    </form>
</body></html>
