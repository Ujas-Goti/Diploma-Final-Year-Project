<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <link href="css/stylesheet1.css" rel="stylesheet" />
    <link href="fontawesome-free-5.15.3-web/css/all.min.css" rel="stylesheet" />
    <style>
        .lbl1{
            margin-bottom:10px;
        }
        .d5{
           background-color: white;
            height: fit-content;
            width: 600px;
            border-radius: 7px 7px 7px 7px;
            box-shadow: 3px 3px 3px 3px;
        }
        .img{
            height:23px;
            width:23px;
            margin-top:5px;
        }
        .td1{
            cursor :pointer;
            width:auto;
            box-shadow: 2px 2px 3px grey;
        }
         .td1:hover{
            box-shadow: 5px 5px 3px grey;
            border-radius: 15px;
        }
        .auto-style1 {
            width: 79px;
        }
        .d7{
            background-color: white;
            height: fit-content;
            width:900px;
            border-radius: 7px 7px 7px 7px;
            box-shadow: 3px 3px 3px 3px;
        }
    </style>
</head>
<body class="body">
    <form id="form1" runat="server">
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
            <div class="d7">
                 <table align="center" cellpadding="7px">
                    <tr>
                        <td align="left">
                            <table cellpadding="5px">
                                <tr>
                                    <td>
                                        <img src="Images/WhatsApp%20Image%202022-02-23%20at%203.07.47%20PM.jpeg" class="img" />
                                    </td>
                                    <td class="auto-style1">
                                        <asp:Label ID="Label1" runat="server" CssClass="lbl1" Text=""></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                     <tr>
                         <td align="left">
                             <asp:Button ID="Button2" runat="server" Height="32px" Width="230px" CssClass="button" Text="Add new School" OnClick="Button2_Click" />
                         </td>
                         <td align="right">
                             <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" CssClass="log" Text="Logout" Height="30px" />
                         </td>
                     </tr>
                     <tr>
                         <td colspan="2">
                              <asp:GridView ID="GridView1"  runat="server" CellPadding="4" Height="50px" Width="800px" ForeColor="Black" PageSize="20" HorizontalAlign="Center"  BackColor="#333" BorderColor="#333333"   BorderWidth="1px" CellSpacing="2" Font-Size="XX-Small">
                <EditRowStyle Font-Size="Smaller" />
                <EmptyDataRowStyle Wrap="False" />
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" Font-Size="X-Small" HorizontalAlign="Center" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" Font-Size="X-Small"  HorizontalAlign="Left" />
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
                         </td>
                     </tr>
                     </table>
            </div>
        </div>
    </form>
</body>
</html>
