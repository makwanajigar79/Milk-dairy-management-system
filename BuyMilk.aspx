<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="BuyMilk.aspx.cs" Inherits="BuyMilk" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <head>
    <link href="Styles/AddAccount.css" rel="stylesheet" type="text/css" />
   
</head>
    
    <style type="text/css">
        .style2
        {
            width: 71px;
        }
        .style3
        {
            width: 66px;
        }
        .style4
        {
            width: 273px;
        }
        .style6
        {
            width: 133px;
        }
        .style7
        {
            width: 100px;
        }
        .style8
        {
            width: 120px;
        }
        .style9
        {
            width: 104px;
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <div align="center" style="height: auto">
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [Ac_ID] FROM [Account_TB]"></asp:SqlDataSource>
<br />
    <fieldset style="height:auto">

        <table>
            <tr>
                <td class="style6">
                    <asp:Label ID="Label1" runat="server" Text="ACCOUNT NO :" Font-Bold="True" 
                        Font-Size="Medium"></asp:Label>&nbsp; </td>
                <td class="style4">
                    &nbsp;<asp:TextBox ID="txtAcno" runat="server" class="textbox" 
                         AutoPostBack="True" 
                        ontextchanged="txtAcno_TextChanged" placehoder="Enter Ac Id" ></asp:TextBox>
                    <br />
                </td>
                <td class="style7">
                   
                    &nbsp;<asp:Label ID="Label2" runat="server" Text="NAME :" Font-Bold="True" 
                        Font-Size="Medium"></asp:Label></td>
                <td class="style8" style="font-size: medium">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" 
                        ></asp:Label></td>
                <td style="font-weight: bold" class="style9">&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="LabelDate" runat="server" Font-Size="Small" Text="Label"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;</td>
            </tr>
            <tr>
                <td class="style6"></td>
                <td class="style4">
                    <asp:TextBox ID="txtCattle" runat="server" class="textbox" ReadOnly="True" TabIndex="1"  
                        ></asp:TextBox></td>
                <td class="style7">
                    <asp:Label ID="Label4" runat="server" Text="ADDRESS :" Font-Bold="True" 
                        Font-Size="Medium"></asp:Label>&nbsp;&nbsp;&nbsp; </td>
                <td class="style8" style="font-size: medium">
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" 
                        ></asp:Label></td>
                <td class="style9">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="LabelDate_Day" runat="server" Font-Size="Medium" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>

    </fieldset>
        <tr>
            <td>

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            <fieldset style="height:auto">
            <center>
    <table>
        <tr>
            <td class="style3">
                <asp:Label ID="Label6" runat="server" Text="LITTER :" Font-Bold="True" 
                    Font-Size="Medium"></asp:Label></td>
            <td>
                <asp:TextBox ID="txtLitter" runat="server" Width="80px" class="textbox" 
                    TabIndex="2" ></asp:TextBox></td>
            <td>
                &nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label8" runat="server" Text="PRICE/LITTER :" Font-Bold="True" 
                    Font-Size="Medium"></asp:Label></td>
            <td>
                <asp:TextBox ID="txtPriceLitter" runat="server" Width="80px" class="textbox" 
                    ontextchanged="txtPriceLitter_TextChanged" ReadOnly="True"></asp:TextBox></td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label7" runat="server" Text="FATE :" Font-Bold="True" 
                    Font-Size="Medium"></asp:Label></td>
            <td>
                <asp:TextBox ID="txtFate" runat="server" Width="79px" class="textbox" 
                    ontextchanged="txtFate_TextChanged" AutoPostBack="True" TabIndex="3" 
                   ></asp:TextBox></td>

            <td>
                &nbsp;&nbsp;
                <asp:Label ID="Label9" runat="server" Text="TOTAL PRICE :" Font-Bold="True" 
                    Font-Size="Medium"></asp:Label></td>
            <td>
                <asp:TextBox ID="txtTotalPrice" runat="server" Width="80px" class="textbox" 
                    ReadOnly="True"></asp:TextBox></td>
        </tr>
        <br />
        <tr>
        <td>
        </td>
        <td>
        </td>
        <td>
            <br />
&nbsp;<asp:Button ID="btnSubmit" runat="server" Text="SUBMIT" Width="98px" 
                class="Button" onclick="btnSubmit_Click"/>
        </td>
       <td>
           <br />
&nbsp;&nbsp;&nbsp;
       <asp:Button ID="btnPrint" runat="server" Text="PRINT" Width="98px" 
                class="Button" onclick="btnPrint_Click"/>
       </td>
        
        </tr>
    </table>
    </center>
    </fieldset>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   
            
    <table>
    <tr>
        
        <td class="style2">
            <asp:Label ID="Label10" runat="server" Text="Today Session List :" 
                    Font-Bold="True"></asp:Label>
&nbsp;
                <asp:Label ID="Label11" runat="server"></asp:Label></td>
    </tr>

    <tr>
        <td>
        <center>
            <fieldset style="height:auto">
           
                <asp:GridView ID="GridView1" runat="server" Height="169px" Width="417px" 
                    BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
                    CellPadding="2" DataSourceID="SqlDataSource1" ForeColor="Black" 
                    GridLines="None" AutoGenerateColumns="False" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged" 
                    AllowSorting="True" AllowPaging="True" 
                   >
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="M_ID" HeaderText="M_ID" InsertVisible="False" 
                            ReadOnly="True" SortExpression="M_ID" />
                        <asp:BoundField DataField="Ac_ID" HeaderText="Ac_ID" SortExpression="Ac_ID" />
                        <asp:BoundField DataField="First_Name" HeaderText="First_Name" 
                            SortExpression="First_Name" />
                        <asp:BoundField DataField="Cattle" HeaderText="Cattle" 
                            SortExpression="Cattle" />
                        <asp:BoundField DataField="Liter" HeaderText="Liter" SortExpression="Liter" />
                        <asp:BoundField DataField="Fate" HeaderText="Fate" 
                            SortExpression="Fate" />
                        <asp:BoundField DataField="Total_price" HeaderText="Total_price" 
                            SortExpression="Total_price" />
                        <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                        <asp:BoundField DataField="Session" HeaderText="Session" 
                            SortExpression="Session" />
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
                <div> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    <br />
                    <asp:Label ID="lblPrintM_ID" runat="server" Text="Label" Visible="False"></asp:Label>
                &nbsp;<asp:Label ID="lblPrintAc_ID" runat="server" Text="Label" Visible="False"></asp:Label>
                    <asp:Label ID="lblPrintFirstName" runat="server" Text="Label" Visible="False"></asp:Label>
                    <asp:Label ID="lblPrintcattle" runat="server" Text="Label" Visible="False"></asp:Label>
                    <asp:Label ID="lblPrintLiter" runat="server" Text="Label" Visible="False"></asp:Label>
                    <asp:Label ID="lblPrintFate" runat="server" Text="Label" Visible="False"></asp:Label>
                    <asp:Label ID="lblPrintTotal_Price" runat="server" Text="Label" Visible="False"></asp:Label>
                    <asp:Label ID="lblPrintDate" runat="server" Text="Label" Visible="False"></asp:Label>
                    <asp:Label ID="lblPrintsession" runat="server" Text="Label" Visible="False"></asp:Label>
                </div>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [Milk_Data_TB]"></asp:SqlDataSource>
                
                    <br />
                </fieldset>
                    </center>
           
        </td>
       
    </tr>
    </table>
     
    </div>
</asp:Content>

