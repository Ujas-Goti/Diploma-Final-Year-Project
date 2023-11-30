<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registerdropout.aspx.cs" Inherits="registerdropout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="fontawesome-free-5.15.3-web/css/all.min.css" rel="stylesheet" />
    <link href="css/stylesheet1.css" rel="stylesheet" />
    <title></title>
    <style>
        .d6 {
            background-color: white;
            height: fit-content;
            width: 500px;
            border-radius: 7px 7px 7px 7px;
            box-shadow: 3px 3px 3px 3px;
            margin-left: 0px;
        }
    </style>

</head>
<body class="body">
    <form id="form1" runat="server">
         <nav><div class="navbar1">
        <div align="center" class="lbl">
            <a href="School.aspx" class="label">
                Dropout Analyzer
            </a>
        </div>
    </div></nav> 
  
        <br />
        <br />

        <div align="center">
            
            <div class="d6"><br />
                 <b>Enter Aadhar : </b>
            <asp:TextBox ID="TextBox1" Height="25px" Width="200px" runat="server"></asp:TextBox>
                <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="RequiredFieldValidator" Font-Size="Small" ForeColor="Red">*Required Field</asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="\d{12}" Font-Size="Small">*Must be 12 Digits</asp:RegularExpressionValidator>
&nbsp;<asp:Label ID="Label1" runat="server" ForeColor="Red" Font-Size="Small"></asp:Label>
            <br />
            <br />
            <asp:Button ID="Button1" CssClass="button" runat="server" Text="Verify" Height="35px" Width="70px" OnClick="Button1_Click" />
            <br />
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
                            <asp:DropDownList ID="DropDownList1"  Height="25px" runat="server" Width="208px">
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
                        <td colspan="2" align="center">
                            <asp:Button ID="Button2" CssClass="button" Height="35px" Width="87px" runat="server" Text="Register" OnClick="Button2_Click" />
                            <br />
                            <br />
                            <asp:Panel runat="server" ID="Panel2" Visible="False" BackColor="#3399FF" ForeColor="White">
                                Registered successfully.
                                <br />
                                <br />
                                <asp:Button ID="Button3" CssClass="button" runat="server" Height="35px" Width="70px" Text="Back" ForeColor="White" OnClick="Button3_Click" />
                                <br />
                            </asp:Panel>
                        </td>
                    </tr>
                </table>
            </asp:Panel>
        </div>
            </div> 
    </form>
</body>
</html>
