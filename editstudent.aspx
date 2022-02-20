<%@ Page Language="C#" AutoEventWireup="true" CodeFile="editstudent.aspx.cs" Inherits="editstudent" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 228px;
        }
        .auto-style2 {
            margin-left: 93px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
             <div align="center">
            <b>Enter Aadhar : </b>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="\d{12}">*Must be 12 Digits</asp:RegularExpressionValidator>
            &nbsp;<asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Verify" OnClick="Button1_Click" />
                 <br />
            <br />
                 <asp:Panel ID="Panel1" runat="server">
                     <asp:GridView ID="GridView1"  runat="server" CellPadding="4" Height="50px" Width="800px" ForeColor="Black" PageSize="20" HorizontalAlign="Center" ShowHeaderWhenEmpty="True" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellSpacing="2" Font-Size="XX-Small">
                <EditRowStyle Font-Size="Smaller" />
                <EmptyDataRowStyle Wrap="False" />
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" Font-Size="X-Small" HorizontalAlign="Center" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" Font-Size="X-Small"  HorizontalAlign="Left" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
                <EmptyDataTemplate>
                    <div align="center">
                        No Records found.
                    </div>
                </EmptyDataTemplate>
            </asp:GridView>
                 </asp:Panel>
                 <asp:Panel ID="Panel2" runat="server" Visible="False">
            <table align="center" cellpadding="10px" width="500px">
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
                       <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                   </td>
               </tr>
                 <tr>
                   <td>
                       School
                   </td>
                   <td>
                       <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                   </td>
               </tr>
                 <tr>
                   <td>
                       Name
                   </td>
                   <td>
                       <asp:TextBox ID="TextBox2" runat="server" AutoPostBack="True" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                   </td>
               </tr>
                <tr>
                   <td>
                      Gender
                   </td>
                   <td>
                       <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                   </td>
               </tr>
                <tr>
                   <td>
                       Aadhar Number
                   </td>
                   <td>
                       <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                   </td>
               </tr>
                <tr>
                   <td>
                       Birthdate
                   </td>
                   <td>
                       <asp:TextBox ID="TextBox6" runat="server" AutoPostBack="True"></asp:TextBox>
                           <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                           <ajaxToolkit:CalendarExtender ID="CalendarExtender1"  TargetControlID="TextBox6" Format="dd/MM/yy" runat="server" />
                   </td>
               </tr>
                <tr>
                   <td>
                       Standard
                   </td>
                   <td>
                       <asp:TextBox ID="TextBox3" runat="server" AutoPostBack="True"></asp:TextBox>
                   </td>
               </tr>
               <tr>
                   <td>
                       Status
                   </td>
                   <td>
                       <asp:TextBox ID="TextBox4" runat="server" AutoPostBack="True"></asp:TextBox>
                   </td>
               </tr>
                <tr>
                   <td>
                       Reason
                   </td>
                   <td class="auto-style1" align="center">
                       <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                   </td>
               </tr>
               <tr>
                   <td>
                       Year of Dropout
                   </td>
                   <td class="auto-style1">
                       <asp:TextBox ID="TextBox5" runat="server" AutoPostBack="True"></asp:TextBox>
                   </td>
               </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:Button ID="Button2" runat="server" Text="Update" OnClick="Button2_Click" Width="87px" />
                    </td>
                </tr>
        </table>
        </asp:Panel>
        <asp:Label ID="Label6" runat="server"></asp:Label>
        </div>

    </form>
</body>
</html>
