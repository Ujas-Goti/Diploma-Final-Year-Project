<%@ Page Language="C#" AutoEventWireup="true" CodeFile="newschool.aspx.cs" Inherits="newschool" %>

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
    </style>
</head>
<body class="body">
    <form id="form1" runat="server">
         <nav><div class="navbar1">
        <div align="center" class="lbl">
            <a href="admin.aspx" class="label">
                Dropout Analyzer
            </a>
        </div>
    </div></nav> 
      <br />
        <br />
    
           <div align="center">
           <div class="d6">
            <table align="center" cellpadding="10px">
                <tr>
                    <td align="center" colspan="2"> 
                        <strong>Enter Details</strong>
                    </td>
                </tr>
               <tr>
                   <td>
                       District
                   </td>
                   <td>
                       <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="dist" Height="25px" DataValueField="dist" Width="208px"></asp:DropDownList>
                       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectConnectionString %>" SelectCommand="SELECT [dist] FROM [Droplist] WHERE ([dist] IS NOT NULL)"></asp:SqlDataSource>
                   </td>
               </tr>
                 <tr>
                   <td>
                       School Name</td>
                   <td>
                       <asp:TextBox ID="TextBox4" Height="25px" Width="200px" runat="server"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="RequiredFieldValidator" Font-Size="Small" ForeColor="Red">*Required Field</asp:RequiredFieldValidator>
                   </td>
               </tr>
                 <tr>
                   <td>
                       School ID</td>
                   <td>
                       <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="200px" AutoPostBack="True" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="RequiredFieldValidator" Font-Size="Small" ForeColor="Red">*Required Field</asp:RequiredFieldValidator>
                       <br />
                       <asp:Label ID="Label2" runat="server" Font-Size="Small" ForeColor="Red" Visible="False"></asp:Label>
                   </td>
               </tr>
                <tr>
                   <td>
                       Type of School</td>
                   <td align="left">
                       <asp:RadioButtonList ID="RadioButtonList1" runat="server" CausesValidation="True">
                           <asp:ListItem Value="GIA">GIA</asp:ListItem>
                           <asp:ListItem>GOV</asp:ListItem>
                       </asp:RadioButtonList>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="RadioButtonList1" Display="Dynamic" ErrorMessage="RequiredFieldValidator" Font-Size="Small" ForeColor="Red">*Required Field</asp:RequiredFieldValidator>
                   </td>
               </tr>
                <tr>
                   <td>
                       Email
                   </td>
                   <td>
                       <asp:TextBox ID="TextBox3" Height="25px" Width="200px" runat="server"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="RequiredFieldValidator" Font-Size="Small" ForeColor="Red">*Required Field</asp:RequiredFieldValidator>
                       <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Font-Size="Small">*Invalid Email</asp:RegularExpressionValidator>
                   </td>
               </tr>
                <tr>
                   <td>Password</td>
                   <td>
                       <asp:TextBox ID="TextBox2" Height="25px" Width="200px" TextMode="Password"  runat="server"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="RequiredFieldValidator" Font-Size="Small" ForeColor="Red">*Required Field</asp:RequiredFieldValidator>
                   </td>
               </tr>
                <tr>
                   <td>Confirm Password</td>
                   <td>
                       <asp:TextBox ID="TextBox5" TextMode="Password" Height="25px" Width="200px"  runat="server"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox5" Display="Dynamic" ErrorMessage="RequiredFieldValidator" Font-Size="Small" ForeColor="Red">*Required Field</asp:RequiredFieldValidator>
                       <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox5" Display="Dynamic" ErrorMessage="CompareValidator" ForeColor="Red" Font-Size="Small">*Passwords don&#39;t match</asp:CompareValidator>
                   </td>
               </tr>
                <tr>
                    <td align="center" colspan="2">
                        <asp:Button ID="Button1" runat="server" Text="Add" Width="100px" Height="35px" class="button" OnClick="Button1_Click" />
                         <br />
                            <br />
                            <asp:Panel runat="server" ID="Panel3" Visible="False" BackColor="#3399FF" ForeColor="White">
                                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                                <br />
                                <br />
                                <asp:Button ID="Button3" CssClass="button" runat="server" Height="35px" Width="70px" Text="Back" OnClick="Button3_Click" ForeColor="White" />
                                <br />
                                <br />
                            </asp:Panel>
                    </td>
                    
                </tr>
            </table>
               </div>
        </div>
    </form>
</body>
</html>
