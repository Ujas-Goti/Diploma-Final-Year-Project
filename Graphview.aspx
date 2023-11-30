<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Graphview.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <link href="css/stylesheet1.css" rel="stylesheet" />
    <link href="fontawesome-free-5.15.3-web/css/all.min.css" rel="stylesheet" />
     <style>
        .td{
            height:fit-content;
        }
        .auto-style1 {
            width: 600px;
            height: 350px;
            
        }
        .d3{
            background-color: white;
            height: fit-content;
            width: 1000px;
            border-radius: 7px 7px 7px 7px;
            box-shadow: 3px 3px 3px 3px
        }
        </style>
</head>
<body class="body">
    <nav><div class="navbar">
        <div class="dropdown">
        <button class="dropbtn">
          <i class="fas fa-bars"></i>
        </button>
        <div class="dropdown-content">
          <a href="adminlogin.aspx">Admin</a>
          <a href="schoollogin.aspx">School Login</a>
        </div>
      </div> 
        <div align="center" class="lbl">
            <a href="Homepage.aspx" class="label">
                Dropout Analyzer
            </a>
            
        </div>
    </div></nav> 
    <form id="form1" runat="server">   
        <br />
        <div align="center">
            <div align="center" class="d3">
            <table cellpadding="10px" align="center">
                <tr align="center">
                    <td colspan="3">
                        <h2>Choose Criteria</h2>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:DropDownList ID="District" runat="server" CssClass="dlist" DataSourceID="SqlDataSource4" DataTextField="dist" DataValueField="dist" AutoPostBack="True" OnSelectedIndexChanged="District_SelectedIndexChanged">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectConnectionString %>" SelectCommand="SELECT [dist] FROM [Droplist] WHERE ([dist] IS NOT NULL)"></asp:SqlDataSource>
                    </td>
                    <td>
                        <asp:DropDownList ID="School" runat="server" CssClass="dlist" Enabled="False" AutoPostBack="True">
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:DropDownList ID="Year" runat="server" CssClass="dlist">
                            <asp:ListItem>Select Year</asp:ListItem>
                            <asp:ListItem>2018</asp:ListItem>
                            <asp:ListItem>2019</asp:ListItem>
                            <asp:ListItem>2020</asp:ListItem>
                            <asp:ListItem>2021</asp:ListItem>
                            <asp:ListItem>2022</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td colspan="3" align="center">
                        <br />
                       <asp:Button ID="Button1" CssClass="button" runat="server" Text="Show Data" Height="30px" OnClick="Button1_Click" />
                        
                    </td>
                </tr>
            </table>
      
        <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Center">
            <table align="center">
                <tr>
                    <td>
                        <script type="text/javascript" src="https://www.google.com/jsapi"></script> 
        <asp:Literal ID="ltScripts" runat="server"></asp:Literal> 
        <div id="piechart_3d" class="auto-style1" align="center"></div>
                    </td>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" BackColor="#333333" BorderColor="#333333" BorderWidth="2px" CellPadding="4" CellSpacing="2" ForeColor="Black" HorizontalAlign="Left" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                            <FooterStyle BackColor="#CCCCCC" />
                            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" BorderColor="#333333" BorderWidth="1px" />
                            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                            <RowStyle BackColor="White" HorizontalAlign="Left" BorderColor="#333333" BorderWidth="1px" />
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
                    </td>
                </tr>
            </table>
        </asp:Panel>
                <br />
                <br />
                <asp:Panel ID="Panel2" runat="server" HorizontalAlign="Center">
            <table align="center">
                <tr>
                    <td>
                        <script type="text/javascript" src="https://www.google.com/jsapi"></script> 
        <asp:Literal ID="Literal1" runat="server"></asp:Literal> 
        <div id="piechart2_3d" class="auto-style1" align="center"></div>
                    </td>
                    <td>
                        <asp:GridView ID="GridView2" runat="server" BackColor="#333333" BorderColor="#333333" BorderWidth="2px" CellPadding="4" CellSpacing="2" ForeColor="Black" HorizontalAlign="Left" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                            <FooterStyle BackColor="#CCCCCC" />
                            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" BorderColor="#333333" BorderWidth="1px" />
                            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                            <RowStyle BackColor="White" HorizontalAlign="Left" BorderColor="#333333" BorderWidth="1px" />
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
                    </td>
                </tr>
            </table>
        </asp:Panel>

        </div>
        </div>
        
            
    </form>
</body>
</html>
