<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="DeleteAccount.aspx.cs" Inherits="DeleteAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

<div align="center">
        <fieldset style="height:auto">
        <legend>DELETE ACCOUNT</legend>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
                CellPadding="4" DataKeyNames="Ac_ID" DataSourceID="SqlDataSource1" 
                onrowdeleting="GridView1_RowDeleting" AllowPaging="True" >
                <Columns>
                    <asp:CommandField ShowDeleteButton="True"></asp:CommandField>
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
                ConflictDetection="CompareAllValues" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                DeleteCommand="DELETE FROM [Account_TB] WHERE [Ac_ID] = @original_Ac_ID AND [First_Name] = @original_First_Name AND (([Last_Name] = @original_Last_Name) OR ([Last_Name] IS NULL AND @original_Last_Name IS NULL)) AND [Address] = @original_Address AND [Mobile_No] = @original_Mobile_No AND [Cattle] = @original_Cattle" 
                InsertCommand="INSERT INTO [Account_TB] ([First_Name], [Last_Name], [Address], [Mobile_No], [Cattle]) VALUES (@First_Name, @Last_Name, @Address, @Mobile_No, @Cattle)" 
                OldValuesParameterFormatString="original_{0}" 
                SelectCommand="SELECT * FROM [Account_TB]" 
                UpdateCommand="UPDATE [Account_TB] SET [First_Name] = @First_Name, [Last_Name] = @Last_Name, [Address] = @Address, [Mobile_No] = @Mobile_No, [Cattle] = @Cattle WHERE [Ac_ID] = @original_Ac_ID AND [First_Name] = @original_First_Name AND (([Last_Name] = @original_Last_Name) OR ([Last_Name] IS NULL AND @original_Last_Name IS NULL)) AND [Address] = @original_Address AND [Mobile_No] = @original_Mobile_No AND [Cattle] = @original_Cattle">
                <DeleteParameters>
                    <asp:Parameter Name="original_Ac_ID" Type="Decimal" />
                    <asp:Parameter Name="original_First_Name" Type="String" />
                    <asp:Parameter Name="original_Last_Name" Type="String" />
                    <asp:Parameter Name="original_Address" Type="String" />
                    <asp:Parameter Name="original_Mobile_No" Type="Decimal" />
                    <asp:Parameter Name="original_Cattle" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="First_Name" Type="String" />
                    <asp:Parameter Name="Last_Name" Type="String" />
                    <asp:Parameter Name="Address" Type="String" />
                    <asp:Parameter Name="Mobile_No" Type="Decimal" />
                    <asp:Parameter Name="Cattle" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="First_Name" Type="String" />
                    <asp:Parameter Name="Last_Name" Type="String" />
                    <asp:Parameter Name="Address" Type="String" />
                    <asp:Parameter Name="Mobile_No" Type="Decimal" />
                    <asp:Parameter Name="Cattle" Type="String" />
                    <asp:Parameter Name="original_Ac_ID" Type="Decimal" />
                    <asp:Parameter Name="original_First_Name" Type="String" />
                    <asp:Parameter Name="original_Last_Name" Type="String" />
                    <asp:Parameter Name="original_Address" Type="String" />
                    <asp:Parameter Name="original_Mobile_No" Type="Decimal" />
                    <asp:Parameter Name="original_Cattle" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </fieldset>
</div>
</asp:Content>

