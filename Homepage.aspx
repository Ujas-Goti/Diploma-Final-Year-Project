<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Homepage.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .td{
            height:fit-content;
        }
        .dlist{
             width:150px;
            height:30px;
            border-radius:7px;
            border-style:solid;
            cursor:pointer;
        }
        .button{
            background-color:black;
            color:white;
            border-radius:10px;
            cursor:pointer;
        }
        </style>
</head>
<body>
   

    <form id="form1" runat="server">
         <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Right">
        <asp:Button ID="Button3" runat="server" Text="School-Login" OnClick="Button3_Click" />
    </asp:Panel>
        <div>
            <table cellpadding="10px" align="center">
                <tr align="center">
                    <td colspan="4">
                        <h2>Choose View</h2>
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
                        <asp:DropDownList ID="Reason" runat="server" CssClass="dlist" DataSourceID="SqlDataSource3" DataTextField="reason" DataValueField="reason"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectConnectionString %>" SelectCommand="SELECT [reason] FROM [Droplist] WHERE ([reason] IS NOT NULL)"></asp:SqlDataSource>
                    </td>
                    <td>
                        <asp:DropDownList ID="Year" runat="server" CssClass="dlist">
                            <asp:ListItem>SELECT YEAR</asp:ListItem>
                            <asp:ListItem>2018</asp:ListItem>
                            <asp:ListItem>2019</asp:ListItem>
                            <asp:ListItem>2020</asp:ListItem>
                            <asp:ListItem>2021</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td colspan="4" align="center">
                        <br />
                       <asp:Button ID="Button1" CssClass="button" runat="server" Text="Show Data" Height="30px" OnClick="Button1_Click" />
                        
                    </td>
                </tr>
            </table>
        </div>
        <br />
        <br />
        <div align="center">
            <asp:Button ID="Button2" runat="server" Text="Show Analytics" OnClick="Button2_Click" />
        </div>
        
    </form>
</body>
</html>
