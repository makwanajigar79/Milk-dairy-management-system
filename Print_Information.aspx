<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Print_Information.aspx.cs" Inherits="Print_Information" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   
    <style type="text/css">
        .style1
        {
            width: 197px;
        }
        .style2
        {
            width: 197px;
            height: 23px;
        }
        .style3
        {
            height: 23px;
        }
    </style>
   
</head>
<body>
    
    <form id="form1" runat="server">
    
    <div align="center">
    <table>
    <tr>
   <td colspan="2" align="center">
    <asp:Label ID="lblReceipt" runat="server" Font-Bold="True" Font-Italic="True" 
            Font-Names="Comic Sans MS" Font-Size="Large" Text="RECEIPT" 
           Font-Underline="True" ForeColor="#003366" tooltip="Press ctrl + P"></asp:Label>
       <br />
       <br />
       <br />
       <asp:Image ID="Image1" runat="server" Height="86px" 
           ImageUrl="~/images/1716283564444.jpg" Width="179px" 
           ToolTip="Press CTRL + P" />
       <br />
       <br />
   </td>
   </tr>

    <tr>
    <td class="style2">
    
        <asp:Label ID="lblM_Id" runat="server" Text="M_ID" tooltip="Press ctrl + P" ></asp:Label>
    
    &nbsp;</td>
    <td class="style3">
    
        <asp:Label ID="opM_id" runat="server" Text="Label" tooltip="Press ctrl + P"></asp:Label>
    
    </td>
    </tr>

    <br />
    <tr>
    <td class="style1">
    
        <asp:Label ID="lblAc_id" runat="server" Text="AC ID" tooltip="Press ctrl + P"></asp:Label>
    
    </td>
    <td>
    
        <asp:Label ID="opAcid" runat="server" Text="Label" tooltip="Press ctrl + P"></asp:Label>
    
    </td>
    <br />
    </tr>
    <td class="style1">
        <asp:Label ID="lblFnm" runat="server" Text="NAME" tooltip="Press ctrl + P"></asp:Label>
    </td>
    <td>
        <asp:Label ID="OpName" runat="server" Text="Label" tooltip="Press ctrl + P"></asp:Label>
    </td>
    <br />
    <tr>
    <td class="style1">
        <asp:Label ID="lblCattle" runat="server" Text="CATTLE" tooltip="Press ctrl + P"></asp:Label>
    </td>
    <td>
        <asp:Label ID="OpCattle" runat="server" Text="Label" tooltip="Press ctrl + P"></asp:Label>
    </td>
    </tr>
    <br />
    <tr>
    <td class="style1">
        <asp:Label ID="Label3" runat="server" Text="LITER" tooltip="Press ctrl + P"></asp:Label>
    </td>
    <td>
        <asp:Label ID="OpLiter" runat="server" Text="Label" tooltip="Press ctrl + P"></asp:Label>
    </td>
    </tr>
    <br />

    <tr><td class="style1">
        <asp:Label ID="lblFate" runat="server" Text="FATE" tooltip="Press ctrl + P"></asp:Label>
        </td><td>
            <asp:Label ID="OpFate" runat="server" Text="Label" tooltip="Press ctrl + P"></asp:Label>
        </td></tr><br />
     <tr><td class="style1">
         <asp:Label ID="lblTotal_Price" runat="server" Text="TOTAL PRICE" tooltip="Press ctrl + P"></asp:Label>
         </td><td>
             <asp:Label ID="OpTotal_Price" runat="server" Text="Label" tooltip="Press ctrl + P"></asp:Label>
         </td></tr><br />
    <tr><td class="style1">
        <asp:Label ID="lblDate" runat="server" Text="DATE" tooltip="Press ctrl + P" ></asp:Label>
        </td><td>
            <asp:Label ID="OpDate" runat="server" Text="Label" tooltip="Press ctrl + P"></asp:Label>
        </td></tr><br />
    <tr><td class="style1">
        <asp:Label ID="lblSession" runat="server" Text="SESSION" tooltip="Press ctrl + P"></asp:Label>
        </td><td>
            <asp:Label ID="OpSession" runat="server" Text="Label" tooltip="Press ctrl + P"></asp:Label>
        </td></tr><br />
    <br />
    <br />

    <tr>
    <td class="style1">
    
        RECEIPT 
        DATE</td>
        <td>
            <asp:Label ID="lblRDate" runat="server" Text="Label" ToolTip="Press ctrl + P"></asp:Label>
        </td>
    </tr>
    </table>
    </div>

   
    </form>

   
</body>
</html>
