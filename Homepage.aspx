<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Homepage.aspx.cs" Inherits="_Default" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="icon" href="Images/image.jpg" type="image/icon type"/>
    <link href="fontawesome-free-5.15.3-web/css/all.min.css" rel="stylesheet" />
    <link href="css/stylesheet1.css" rel="stylesheet" />
    <style>
        
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
            <asp:Label ID="Label1" runat="server" Text="Dropout Analyzer" Font-Names="Castellar" ForeColor="White" Font-Size="Medium"></asp:Label>
        </div>
    </div></nav>
    
    <form id="form1" runat="server">
        
        <table align="center" cellpadding="20px" class="p1">
            <tr>
                <td>
                <div class="d1">
                    <asp:Image ID="Image1" CssClass="i1" ImageUrl="~/Images/quote.jpg" runat="server" Height="350px" />
                </div>
                </td>
                <td>
                    <div class="d2">
            <table cellpadding="10px" align="center">
                <tr align="center">
                    <td>
                        <h2>Choose Criteria</h2>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:DropDownList ID="District" runat="server" CssClass="dlist" DataSourceID="SqlDataSource4" DataTextField="dist" DataValueField="dist" AutoPostBack="True" OnSelectedIndexChanged="District_SelectedIndexChanged">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectConnectionString %>" SelectCommand="SELECT [dist] FROM [Droplist] WHERE ([dist] IS NOT NULL)"></asp:SqlDataSource>
                    </td>
                    </tr>
                <tr>
                    <td>
                        <asp:DropDownList ID="School" runat="server" CssClass="dlist" Enabled="False" AutoPostBack="True">
                        </asp:DropDownList>
                    </td>
                    </tr>
                <tr>
                    <td>
                        <asp:DropDownList ID="Reason" runat="server" CssClass="dlist" DataSourceID="SqlDataSource3" DataTextField="reason" DataValueField="reason"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectConnectionString %>" SelectCommand="SELECT [reason] FROM [Droplist] WHERE ([reason] IS NOT NULL)"></asp:SqlDataSource>
                    </td>
                    </tr>
                <tr>
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
                </tr><tr>
                    <td>
                        <asp:DropDownList ID="Caste" runat="server" CssClass="dlist">
                            <asp:ListItem>Select Caste</asp:ListItem>
                            <asp:ListItem>General</asp:ListItem>
                            <asp:ListItem>OBC</asp:ListItem>
                            <asp:ListItem>SC</asp:ListItem>
                            <asp:ListItem>ST</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        
                       <asp:Button ID="Button1" CssClass="button" runat="server" Text="Show Data" Height="30px" OnClick="Button1_Click" />
                        <br />
                        
                    </td>
                </tr>
            </table>
            <div align="center">
            </div>
         </div>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    <div class="d3">
                        <asp:Image ID="Image2" CssClass="i2" ImageUrl="~/Images/pie-chart-excel-1080x675.jpg" runat="server" Height="200px" Width="250px" ImageAlign="Middle" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" CssClass="button" Text="Show Analytics"  Height="40px" OnClick="Button2_Click" />
                    </div>
                </td>
            </tr>
        </table>
        <br />
        <br />
    </form>
</body>
</html>
