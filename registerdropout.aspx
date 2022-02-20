<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registerdropout.aspx.cs" Inherits="registerdropout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Panel runat="server" BackColor="#99FF66" ForeColor="#006600" ID="Panel2" Visible="False">
    Registered successfully. &nbsp&nbsp<a href="School.aspx">Back to Homepage</a>
</asp:Panel>
        <div align="center">
            <b>Enter Aadhar : </b>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="\d{12}">*Must be 12 Digits</asp:RegularExpressionValidator>
&nbsp;<asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Verify" OnClick="Button1_Click" />
            <br />
            <asp:Panel ID="Panel1" runat="server" Visible="False">
                <table align="center" cellpadding="10px">
                    <tr>
                        <td>
                            Aadhar No. 
                        </td>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Name
                        </td>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Standard
                        </td>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Reason
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server">
                                <asp:ListItem>Select Reason</asp:ListItem>
                                <asp:ListItem>Left</asp:ListItem>
                                <asp:ListItem>Financial Constraints</asp:ListItem>
                                <asp:ListItem>Disengagement</asp:ListItem>
                                <asp:ListItem>Poor Health</asp:ListItem>
                                <asp:ListItem>Family Influences</asp:ListItem>
                                <asp:ListItem>Gender Discrimination</asp:ListItem>
                                <asp:ListItem>School Availability</asp:ListItem>
                                <asp:ListItem>Transportation Problem</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Year of Dropout
                        </td>
                        <td>
                            <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" alignm="center">
                            <asp:Button ID="Button2" runat="server" Text="Register" OnClick="Button2_Click" />
                            <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                </table>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
