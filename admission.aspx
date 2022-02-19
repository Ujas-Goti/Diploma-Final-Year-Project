<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admission.aspx.cs" Inherits="admission" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
<asp:Panel runat="server" BackColor="#99FF66" ForeColor="#006600" ID="Panel1" Visible="False">
    Added successfully. &nbsp&nbsp<a href="School.aspx">Back to Homepage</a>
</asp:Panel>
    <form id="form2" runat="server">
        <div>

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
                       <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
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
                   </td>
               </tr>
                <tr>
                   <td>
                       Aadhar Number
                   </td>
                   <td>
                       <asp:TextBox ID="TextBox3" runat="server" AutoPostBack="True"></asp:TextBox>
                       <br />
                       <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="\d{12}" Display="Dynamic">*Must be 12 Digits</asp:RegularExpressionValidator>
                       <asp:Label ID="Label4" runat="server" Enabled="False" Visible="False"></asp:Label>
                   </td>
               </tr>
                <tr>
                   <td>
                       Birthdate
                   </td>
                   <td>
                       <asp:TextBox ID="TextBox6" runat="server">---Select Date---</asp:TextBox>
                           <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                           <ajaxToolkit:CalendarExtender ID="CalendarExtender1"  TargetControlID="TextBox6" Format="yyyy-MM-dd" runat="server" />
                   </td>
               </tr>
                <tr>
                   <td>
                       Standard
                   </td>
                   <td>
                       <asp:DropDownList ID="DropDownList1" runat="server" Width="229px">
                           <asp:ListItem>---Select Standard---</asp:ListItem>
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
                    <td colspan="2">
                        <asp:Button ID="Button2" runat="server" Text="Add" OnClick="Button2_Click" Width="87px" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
