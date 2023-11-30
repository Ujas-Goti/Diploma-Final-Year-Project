<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admission.aspx.cs" Inherits="admission" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
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
    <form id="form2" runat="server">
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
           <div class="d6">
               <table align="center" cellpadding="7px">
                <tr>
                    <td align="center" colspan="2"> 
                        <strong>New Admission
                        </strong>
                    </td>
                </tr>
               <tr>
                   <td>
                       District
                   </td>
                   <td>
                       <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                   </td>
               </tr>
                 <tr>
                   <td>
                       School
                   </td>
                   <td>
                       <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                   </td>
               </tr>
                 <tr>
                   <td>
                       Name
                   </td>
                   <td>
                       <asp:TextBox ID="TextBox1" Height="25px" Width="200px" runat="server"></asp:TextBox>
                       <br />
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="RequiredFieldValidator" Font-Size="Small" ForeColor="Red">*Required Field</asp:RequiredFieldValidator>
                   </td>
               </tr>
                <tr>
                   <td>
                      Gender
                   </td>
                   <td align="left">
                       <asp:RadioButtonList ID="RadioButtonList1" runat="server" CausesValidation="True">
                           <asp:ListItem Value="Male">Male</asp:ListItem>
                           <asp:ListItem>Female</asp:ListItem>
                           <asp:ListItem>Other</asp:ListItem>
                       </asp:RadioButtonList>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="RadioButtonList1" Display="Dynamic" ErrorMessage="RequiredFieldValidator" Font-Size="Small" ForeColor="Red">*Required Field</asp:RequiredFieldValidator>
                   </td>
               </tr>
                <tr>
                   <td>
                       Aadhar Number
                   </td>
                   <td>
                       <asp:TextBox ID="TextBox3" runat="server" Height="25px" Width="200px" AutoPostBack="True"></asp:TextBox>
                       <br />
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="RequiredFieldValidator" Font-Size="Small" ForeColor="Red">*Required Field</asp:RequiredFieldValidator>
                       <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="\d{12}" Display="Dynamic" Font-Size="Small">*Must be 12 Digits</asp:RegularExpressionValidator>
                       <asp:Label ID="Label4" runat="server" Enabled="False" Visible="False" Font-Size="Small" ForeColor="Red"></asp:Label>
                   </td>
               </tr>
                   <tr>
                       <td>Caste
                           </td>
                            <td>
                        <asp:DropDownList ID="Caste" runat="server" CssClass="dlist">
                            <asp:ListItem>General</asp:ListItem>
                            <asp:ListItem>OBC</asp:ListItem>
                            <asp:ListItem>SC</asp:ListItem>
                            <asp:ListItem>ST</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                       
                   </tr>
                <tr>
                   <td>
                       Birthdate
                   </td>
                   <td>
                       <asp:TextBox ID="TextBox6" Height="25px" Width="200px" runat="server" OnTextChanged="TextBox6_TextChanged">Select Date</asp:TextBox>
                           <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                           <ajaxToolkit:CalendarExtender ID="CalendarExtender1"  TargetControlID="TextBox6" Format="dd/MM/yy" runat="server" />
                   </td>
               </tr>
                <tr>
                   <td>
                       Standard
                   </td>
                   <td>
                       <asp:DropDownList ID="DropDownList1" Height="25px" runat="server" Width="208px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                           <asp:ListItem>Select Standard</asp:ListItem>
                           <asp:ListItem>1</asp:ListItem>
                           <asp:ListItem>2</asp:ListItem>
                           <asp:ListItem>3</asp:ListItem>
                           <asp:ListItem>4</asp:ListItem>
                           <asp:ListItem>5</asp:ListItem>
                           <asp:ListItem>6</asp:ListItem>
                           <asp:ListItem>7</asp:ListItem>
                           <asp:ListItem>8</asp:ListItem>
                       </asp:DropDownList>
                   </td>
               </tr>
               
                <tr>
                    <td colspan="2" align="center">
                        <asp:Button ID="Button2" runat="server" CssClass="button" Height="35px" Text="Register" OnClick="Button2_Click" Width="87px" />
                        <br />
                        <br />
                        <asp:Panel runat="server" ID="Panel1" Visible="False" ForeColor="White" BackColor="#3399FF">
                        Added successfully. 
                            <br />
                            <br />
                            <asp:Button ID="Button3" CssClass="button" runat="server" Height="35px" Width="87px"  Text="Back" OnClick="Button3_Click" ForeColor="White" />
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
