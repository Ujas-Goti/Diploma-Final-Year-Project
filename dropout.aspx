<%@ Page Language="C#" AutoEventWireup="true" CodeFile="dropout.aspx.cs" Inherits="dropout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/stylesheet1.css" rel="stylesheet" />
    <link href="fontawesome-free-5.15.3-web/css/all.min.css" rel="stylesheet" />
    <title></title>
     <style>
        .gd1{
            background-color:#333;
            border-radius:7px 7px 7px 7px;
            border: 1px solid #333;
            -webkit-border-radius: 8px;
            -moz-border-radius: 8px;
            border-radius: 8px;
            overflow: hidden;
            width:805px;
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
        <table align="center">
             <tr>
                <td align="center">
                    <asp:Label ID="Label1" runat="server" Text="Dropped Out Students" Font-Names="Cambria" ForeColor="White" Font-Size="Large"></asp:Label>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                     <div class="gd1" align="center">
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
        </div>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
