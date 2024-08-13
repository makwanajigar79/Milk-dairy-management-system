<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="AddAccount.aspx.cs" Inherits="AddAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 47px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<head>
    <link href="Styles/AddAccount.css" rel="stylesheet" type="text/css" />
   
</head>
    <div align="center" >
        <fieldset style="height:auto">
        <legend>ADD ACCOUNT</legend>
        
        <table>
       
        <tr>
            <td class="style1"><asp:Label ID="Label1" runat="server" Text="First Name :" Font-Bold="True" Font-Size="17px"></asp:Label></td>
            <td class="style1"><asp:TextBox ID="txtFname" runat="server" class="textbox"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td><asp:Label ID="Label2" runat="server" Text="Last Name :" Font-Bold="True" Font-Size="17px"></asp:Label></td>
            <td><asp:TextBox ID="txtLname" runat="server" class="textbox"></asp:TextBox>
                <br /></td>
        </tr>
        <tr>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label3" runat="server" Text="Address :"  Font-Bold="True" Font-Size="17px"></asp:Label></td>
            <td><asp:TextBox ID="txtAddress" runat="server" class="textbox"></asp:TextBox><br /></td>
        </tr>
        <tr>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label4" runat="server" Text="Mobile :" Font-Bold="True" Font-Size="17px"></asp:Label></td>
            <td><asp:TextBox ID="txtMobile" runat="server" class="textbox" 
                   ></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                   ControlToValidate="txtMobile" 
                    ErrorMessage="* Please Enter Valid Mobile No!!" 
                    ValidationExpression="[0-9]{10}" ForeColor="Red"></asp:RegularExpressionValidator>
                <br /></td>
        </tr>
        <tr>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label5" runat="server" Text="Cattle :" Font-Bold="True" Font-Size="17px"></asp:Label></td>
            <td> <asp:DropDownList ID="DropDownList1" runat="server" class="dropdown">
            <asp:ListItem>Cow</asp:ListItem>
            <asp:ListItem>Buffelo</asp:ListItem>
        </asp:DropDownList>
                <br />
            </td>

        </tr>
        
        <tr>
       
           
            <td colspan="2" align="center">
             <br />
            <br />
           
            <asp:Button ID="btnAddAccount" runat="server" Text="Add Account" 
                class="Button" Font-Bold="True" Font-Overline="False" 
                Font-Strikeout="False" onclick="btnAddAccount_Click" />
                <br />
             </td>
              <br />

            <br />
        </tr>
           
            </table>
        </fieldset><br />
    </div>
</asp:Content>

