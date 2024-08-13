<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ViewAccount.aspx.cs" Inherits="ViewAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

<div align="center">

    <fieldset style="height:auto">
    <legend>VIEW ACCOUNT</legend>
        <br />
        <br />
   
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="77px" 
        ShowFooter="True" Width="16px" 
        BackColor="White" BorderColor="#CC9966" 
        BorderStyle="None" BorderWidth="1px" CellPadding="4" 
        style="margin-left: 0px" AllowSorting="True" DataKeyNames="Ac_ID" 
            DataSourceID="SqlDataSource1" >
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="Ac_ID" HeaderText="Ac_ID" InsertVisible="False" 
                ReadOnly="True" SortExpression="Ac_ID" />
            <asp:BoundField DataField="First_Name" HeaderText="First_Name" 
                SortExpression="First_Name" />
            <asp:BoundField DataField="Last_Name" HeaderText="Last_Name" 
                SortExpression="Last_Name" />
            <asp:BoundField DataField="Address" HeaderText="Address" 
                SortExpression="Address" />
            <asp:BoundField DataField="Mobile_No" HeaderText="Mobile_No" 
                SortExpression="Mobile_No" />
            <asp:BoundField DataField="Cattle" HeaderText="Cattle" 
                SortExpression="Cattle" />
        </Columns>
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#330099" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <SortedAscendingCellStyle BackColor="#FEFCEB" />
        <SortedAscendingHeaderStyle BackColor="#AF0101" />
        <SortedDescendingCellStyle BackColor="#F6F0C0" />
        <SortedDescendingHeaderStyle BackColor="#7E0000" />
    </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [Account_TB]"></asp:SqlDataSource>
    <br />
    <br />
    <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
&nbsp;
 </fieldset>
</div>
</asp:Content>

