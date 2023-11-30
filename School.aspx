<%@ Page Language="C#" AutoEventWireup="true" CodeFile="School.aspx.cs" Inherits="Default2" %>

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
             <div class="d5">
                <table align="center" cellpadding="15px">
                    <tr>
                        <td align="left">
                            <table cellpadding="5px">
                                <tr>
                                    <td>
                                        <img src="Images/WhatsApp%20Image%202022-02-23%20at%203.07.47%20PM.jpeg" class="img" />
                                    </td>
                                    <td class="auto-style1">
                                        <asp:Label ID="Label3" runat="server" CssClass="lbl1" Text=""></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            School Name : <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                <tr>
                  
                    <td>
                        <asp:Button ID="Button2" runat="server" CssClass="button" OnClick="Button2_Click" Text="New Admission" Height="32px" Width="230px" />
                    </td>
                    <td border="1" class="td1">
                        <a href="current.aspx" style="color: #000000; text-decoration: none">Currently Studying :</a> 
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button3" runat="server" CssClass="button" Text="Register Dropout" Width="230px" Height="32px" OnClick="Button3_Click" />
                    </td>
                    <td border="1" class="td1">
                       <a href="dropout.aspx" style="color: #000000; text-decoration: none">Dropped out students :</a>  
                        <asp:Label ID="Label2" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button4" runat="server" Width="230px" CssClass="button" Text="Edit Data" Height="32px" OnClick="Button4_Click" />
                    </td>
                    <td>

                    </td>
                </tr>
                    <tr>
                  
                    <td colspan="2" align="center">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" CssClass="log" Text="Logout" Height="30px" />
                    </td>
                </tr>
            </table>
            </div>
        </div>
           
    </form>
</body>
</html>
