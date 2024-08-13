<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_Login.aspx.cs" Inherits="Admin_Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Styles/AddAccount.css" rel="stylesheet" type="text/css" />

    <style type="text/css">
    .fieldset
    {            width: 562px;
        }
    </style>
</head>

<body background="images/bg1.png">
    <form id="form1" runat="server">
    <div align="center">
    <asp:Label ID="Label1" runat="server" 
        Text="MILK DAIRY MANAGEMENT SYSTEM" Font-Bold="True" Font-Italic="False" 
        Font-Names="Arial Black" Font-Size="25px" Font-Underline="True" 
        ForeColor="#0099CC"></asp:Label>
        <br />
     </div>
    <br />
    <br /><center>
    <asp:Image ID="Image1" runat="server" Height="126px" 
        ImageUrl="~/images/1716283564495.jpg" Width="240px" />
    <br />
<fieldset class="fieldset" style="border: 2px solid #808080">
  <legend class="legend" 
        
        style="font-size: 18px; background-image: none; width: 98px; height: 24px;">
      Admin Login</legend>&nbsp;<asp:TextBox ID="username" runat="server"  
        placeholder="Enter User Name" class="textbox"></asp:TextBox>
    <br />
    <br />
    <br />
    <asp:TextBox ID="password" runat="server" 
        placeholder="Enter Password" TextMode="Password" class="textbox" ></asp:TextBox>
    <br />
    <br />
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnLogin" runat="server" class="Button" Text="LOGIN" onclick="btnLogin_Click" 
         style="border-radius:10px;" />
        </fieldset>
        </center>
        </form>
</body>
</html>
  

