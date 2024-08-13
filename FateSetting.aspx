<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="FateSetting.aspx.cs" Inherits="FateSetting" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
<head>
    <link href="Styles/AddAccount.css" rel="stylesheet" type="text/css" />
</head>
    <style type="text/css">
        .Button
        {
         background-color: #04AA6D;
         border: none;
         color: white;
         padding: 13px;
         text-align: center;
         width:120px;
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
          width: 200px;
          height: 16px;
        }
        .style1
        {
            width: 172px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<div align="center">
    <fieldset style="height:auto";>
        <legend>Fate Setting</legend>
        <table>
            <tr>
                <td class="style1">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Text="Current Fate Price :" 
                        Font-Bold="True" Font-Size="Medium"></asp:Label>
                </td>
                <td>
                    &nbsp;
                    <asp:TextBox ID="txtCurrentFatePrice" runat="server" class="textbox" 
                        ReadOnly="True"></asp:TextBox>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label2" runat="server" Text="New Fate Price :" Font-Bold="True" 
                        Font-Size="Medium"></asp:Label>
                </td>
                <td>
                    &nbsp;
                    <asp:TextBox ID="txtNewFatePrice" runat="server" class="textbox" 
                        ontextchanged="txtNewFatePrice_TextChanged"></asp:TextBox>
                    <br />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Text="SET PRICE" Font-Bold="True" 
                        class="Button" onclick="Button1_Click" />
                    <br />
                    <br />
                    <br />
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
                        CellPadding="2" DataSourceID="SqlDataSource1" ForeColor="Black" 
                        GridLines="None">
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                        <Columns>
                            <asp:BoundField DataField="F_ID" HeaderText="F_ID" InsertVisible="False" 
                                ReadOnly="True" SortExpression="F_ID" />
                            <asp:BoundField DataField="Current_Fate_Price" HeaderText="Current_Fate_Price" 
                                SortExpression="Current_Fate_Price" />
                            <asp:BoundField DataField="New_Fate_Price" HeaderText="New_Fate_Price" 
                                SortExpression="New_Fate_Price" />
                            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                        </Columns>
                        <FooterStyle BackColor="Tan" />
                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                            HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                        <SortedAscendingCellStyle BackColor="#FAFAE7" />
                        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                        <SortedDescendingCellStyle BackColor="#E1DB9C" />
                        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [Set_Fate_TB]"></asp:SqlDataSource>
                    <br />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
        </table>
    </fieldset>
</div>
</asp:Content>

