<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Dataview.aspx.cs" Inherits="Dataview" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <header>
            <asp:Button ID="Button2" runat="server" Text="Back" Font-Names="Arial Narrow" OnClick="Button2_Click" />
        </header>
    <form id="form1" runat="server">
        <br />
            <asp:GridView ID="GridView1"  runat="server" CellPadding="7" Height="50px" Width="800px" ForeColor="#333333" GridLines="Horizontal" PageSize="20" HorizontalAlign="Center" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" ShowHeaderWhenEmpty="True">
                <AlternatingRowStyle BackColor="White" />
                <EditRowStyle BackColor="#7C6F57" Font-Size="Smaller" />
                <EmptyDataRowStyle Wrap="False" />
                <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="#FFFFCC" Font-Size="Small" HorizontalAlign="Center" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" Font-Size="X-Small" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
                <EmptyDataTemplate>
                    <div align="center">
                        No Records found.
                    </div>
                </EmptyDataTemplate>
            </asp:GridView>
        <br />
    </form>

</body>
</html>
