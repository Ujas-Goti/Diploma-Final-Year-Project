<%@ Page Language="C#" AutoEventWireup="true" CodeFile="School.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .log{
        }
        .lbl{
        }
        .img{
            height:25px;
            width:25px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Right">
                <table align="right" border="0">
                    <tr>
                        <td>
                             <asp:Image ID="Image1" runat="server" CssClass="img" ImageUrl="~/Images/free-user-icon-3296-thumb.png" />
                        </td>
                        <td>
                           
                            &nbsp;<asp:Label ID="Label3" runat="server" CssClass="lbl" Text=""></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                        <td>
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" CssClass="log" Text="Logout" Height="30px" />
                        </td>
                    </tr>
                </table>
            </asp:Panel>
            <br />
            <br />
            <table align="center" cellpadding="10px" width="600px">
                <tr>
                    <td>
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="New Admission" Width="230px" />
                    </td>
                    <td border="1">
                        Currently Studying : 
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button3" runat="server" Text="Register a Dropout" Width="230px" />
                    </td>
                    <td border="1">
                        Dropped out students : 
                        <asp:Label ID="Label2" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
           
            
        </div>
    </form>
</body>
</html>
