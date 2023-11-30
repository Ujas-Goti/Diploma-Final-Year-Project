<%@ Page Language="C#" AutoEventWireup="true" CodeFile="editstudent.aspx.cs" Inherits="editstudent" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
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
            width:910px;
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
<br>
<br>
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
             <asp:Panel ID="Panel1" runat="server">
                      <asp:GridView ID="GridView1"  runat="server" CellPadding="4" Height="50px" Width="900px" ForeColor="Black" PageSize="20" HorizontalAlign="Center"  BackColor="#333" BorderColor="#333333"   BorderWidth="1px" CellSpacing="2" Font-Size="XX-Small">
                <EditRowStyle Font-Size="Smaller" />
                <EmptyDataRowStyle Wrap="False" />
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" Font-Size="X-Small" HorizontalAlign="Center" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" Font-Size="XX-Small"  HorizontalAlign="Left" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#333" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#333" />
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
                       <asp:TextBox ID="TextBox2" Height="25px" Width="200px" runat="server" AutoPostBack="True" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
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
                       Caste
                   </td>
                   <td>
                       <asp:TextBox ID="TextBox8" Height="25px" Width="200px" runat="server" AutoPostBack="True"></asp:TextBox>
                   </td>
               </tr>
                <tr>
                   <td>
                       Birthdate
                   </td>
                   <td>
                       <asp:TextBox ID="TextBox6" runat="server" Height="25px" Width="200px" AutoPostBack="True"></asp:TextBox>
                           <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                           <ajaxToolkit:CalendarExtender ID="CalendarExtender1"  TargetControlID="TextBox6" Format="dd/MM/yy" runat="server" />
                   </td>
               </tr>
                <tr>
                   <td>
                       Standard
                   </td>
                   <td>
                       <asp:TextBox ID="TextBox3" Height="25px" Width="200px" runat="server" AutoPostBack="True"></asp:TextBox>
                   </td>
               </tr>
               <tr>
                   <td>
                       Status
                   </td>
                   <td>
                       <asp:TextBox ID="TextBox4" Height="25px" Width="200px" runat="server" AutoPostBack="True"></asp:TextBox>
                   </td>
               </tr>
                <tr>
                   <td>
                       Reason
                   </td>
                   <td>
                       <asp:TextBox ID="TextBox7" Height="25px" Width="200px" runat="server"></asp:TextBox>
                   </td>
               </tr>
               <tr>
                   <td>
                       Year of Dropout
                   </td>
                   <td class="auto-style1">
                       <asp:TextBox ID="TextBox5" Height="25px" Width="200px" runat="server" AutoPostBack="True"></asp:TextBox>
                   </td>
               </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:Button ID="Button2" runat="server" class="button" Text="Update" OnClick="Button2_Click" Height="35px" Width="87px"  />
                            <br />
                            <br />
                            <asp:Panel runat="server" ID="Panel3" Visible="False" BackColor="#3399FF" ForeColor="White">
                                Updated successfully. 
                                <br />
                                <br />
                                <asp:Button ID="Button3" CssClass="button" runat="server" Height="35px" Width="70px" Text="Back" OnClick="Button3_Click" ForeColor="White" />
                                <br />
                                <br />
                            </asp:Panel>
                    </td>
                </tr>
        </table>
        </asp:Panel>
<br>
<br>
        </div>
        </div>
</form>
</body>
</html>
