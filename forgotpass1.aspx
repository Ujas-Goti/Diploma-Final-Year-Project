<%@ Page Language="C#" AutoEventWireup="true" CodeFile="forgotpass1.aspx.cs" Inherits="forgotpass1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:PlaceHolder ID="PlaceHolder1" runat="server">

        </asp:PlaceHolder>
        <br />
        <asp:Panel ID="Panel1" runat="server" Visible="False">
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Send OTP" />
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" Visible="False">
            Otp Sent!!<br />
            <br />
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            &nbsp;
            <asp:Button ID="Button3" runat="server" Text="Verify" OnClick="Button3_Click" />

        </asp:Panel>
        <asp:Panel ID="Panel3" runat="server" Visible="False">
            
            New Password : <asp:TextBox ID="TextBox1" TextMode="Password" runat="server"></asp:TextBox>
            <br />
            <br />
            Confirm Password : <asp:TextBox ID="TextBox2" TextMode="Password" runat="server"></asp:TextBox>&nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox1" ControlToValidate="TextBox2" ErrorMessage="CompareValidator" ForeColor="Red">*Passwords don&#39;t match</asp:CompareValidator>
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" Text="Reset" OnClick="Button2_Click" />
        </asp:Panel>
        <asp:Panel ID="Panel4" runat="server" Height="71px" Visible="False">
            <asp:Label ID="Label2" runat="server" Text="Password Updated."></asp:Label>
            <br />
            <br />
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Back to Login page" Width="150px" />
        </asp:Panel>
    </form>
</body>
</html>
