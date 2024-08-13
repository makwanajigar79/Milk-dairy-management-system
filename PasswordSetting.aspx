<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="PasswordSetting.aspx.cs" Inherits="PasswordSetting" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <head>
    <link href="Styles/AddAccount.css" rel="stylesheet" type="text/css" />

<style>
    .Button
{
     border-style: none;
        border-color: inherit;
        border-width: medium;
        background-color: #04AA6D;
         color: white;
         padding: 13px;
         text-align: center;
         text-decoration: none;
         display: inline-block;
         font-size: 16px;
         margin: 4px 2px;
         border-radius:4px;
}
.textbox
    {
     border-radius:12px;
     padding: 10px;
     }
</style>
</head>
<div align="center">
    <fieldset style="height:auto">
        <legend>Change Password</legend>
        
        <table>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="New Password : " Font-Bold="True" 
                        Font-Size="Large"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" class="textbox" Height="19px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Confirm Password :" 
                        Font-Bold="True" Font-Size="Large"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" class="textbox" Height="19px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Text="Change Password"  class="Button"
                        Font-Bold="True" onclick="Button1_Click" Width="173px" />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    &nbsp;</td>
            </tr>
        </table>
        
    </fieldset>
</div>
</asp:Content>

