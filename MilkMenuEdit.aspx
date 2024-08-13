<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="MilkMenuEdit.aspx.cs" Inherits="MilkMenuEdit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <link href="Styles/AddAccount.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        
       .highlight
       {
            background-color: Yellow;
            font-weight: bold;
       }
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<div align="center">
    <fieldset style="height:auto">
    <legend>Edit Buy Record of Account</legend>
        <table style="align:center">
        <tr>
            <td class="style2">
                <asp:Label ID="Label3" runat="server" Text="Name :" Font-Bold="True" 
                    Font-Size="Medium"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" class="textbox"  
                     AutoPostBack="True" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label2" runat="server" Text="Account No :" Font-Bold="True" 
                    Font-Size="Medium"></asp:Label>
                    </td>
                  <td>
                <asp:TextBox ID="TextBox1" runat="server" class="textbox" placeholder="Search Acoount ID"
                    ontextchanged="TextBox1_TextChanged" AutoPostBack="True" ></asp:TextBox>
            </td>
            <td class="style4">
                <asp:Label ID="Label4" runat="server" Text="Address :" Font-Bold="True" 
                    Font-Size="Medium"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="TextBox3" runat="server" class="textbox" 
                     AutoPostBack="True" ></asp:TextBox>
            </td>
        </tr>
    </table>
    
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="M_ID" DataSourceID="SqlDataSource1" AllowSorting="True" 
        CellPadding="2" ForeColor="#333333" GridLines="None" Width="194px" 
            onrowdeleted="GridView1_RowDeleted" onrowupdated="GridView1_RowUpdated" 
            onselectedindexchanged="GridView1_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                ShowSelectButton="True" />
            <asp:BoundField DataField="M_ID" HeaderText="M_ID" InsertVisible="False" 
                ReadOnly="True" SortExpression="M_ID" />
            <asp:BoundField DataField="Ac_ID" HeaderText="Ac_ID" SortExpression="Ac_ID" />
            <asp:BoundField DataField="First_Name" HeaderText="First_Name" 
                SortExpression="First_Name" />
            <asp:BoundField DataField="Cattle" HeaderText="Cattle" 
                SortExpression="Cattle" />
            <asp:BoundField DataField="Liter" HeaderText="Liter" SortExpression="Liter" />
            <asp:BoundField DataField="Fate" HeaderText="Fate" SortExpression="Fate" />
            <asp:BoundField DataField="Total_price" HeaderText="Total_price" 
                SortExpression="Total_price" />
            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
            <asp:BoundField DataField="Session" HeaderText="Session" 
                SortExpression="Session" />
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConflictDetection="CompareAllValues" 
        ConnectionString="<%$ ConnectionStrings:ApplicationServices %>" 
        DeleteCommand="DELETE FROM [Milk_Data_TB] WHERE [M_ID] = @original_M_ID AND [Ac_ID] = @original_Ac_ID AND [First_Name] = @original_First_Name AND [Cattle] = @original_Cattle AND [Liter] = @original_Liter AND [Fate] = @original_Fate AND [Total_price] = @original_Total_price AND (([Date] = @original_Date) OR ([Date] IS NULL AND @original_Date IS NULL)) AND (([Session] = @original_Session) OR ([Session] IS NULL AND @original_Session IS NULL))" 
        InsertCommand="INSERT INTO [Milk_Data_TB] ([Ac_ID], [First_Name], [Cattle], [Liter], [Fate], [Total_price], [Date], [Session]) VALUES (@Ac_ID, @First_Name, @Cattle, @Liter, @Fate, @Total_price, @Date, @Session)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT * FROM [Milk_Data_TB]" 
        
            
            UpdateCommand="UPDATE [Milk_Data_TB] SET [Ac_ID] = @Ac_ID, [First_Name] = @First_Name, [Cattle] = @Cattle, [Liter] = @Liter, [Fate] = @Fate, [Total_price] = @Total_price, [Date] = @Date, [Session] = @Session WHERE [M_ID] = @original_M_ID AND [Ac_ID] = @original_Ac_ID AND [First_Name] = @original_First_Name AND [Cattle] = @original_Cattle AND [Liter] = @original_Liter AND [Fate] = @original_Fate AND [Total_price] = @original_Total_price AND (([Date] = @original_Date) OR ([Date] IS NULL AND @original_Date IS NULL)) AND (([Session] = @original_Session) OR ([Session] IS NULL AND @original_Session IS NULL))" 
            >
        <DeleteParameters>
            <asp:Parameter Name="original_M_ID" Type="Decimal" />
            <asp:Parameter Name="original_Ac_ID" Type="Int32" />
            <asp:Parameter Name="original_First_Name" Type="String" />
            <asp:Parameter Name="original_Cattle" Type="String" />
            <asp:Parameter Name="original_Liter" Type="Decimal" />
            <asp:Parameter Name="original_Fate" Type="Decimal" />
            <asp:Parameter Name="original_Total_price" Type="Decimal" />
            <asp:Parameter Name="original_Date" Type="String" />
            <asp:Parameter Name="original_Session" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Ac_ID" Type="Int32" />
            <asp:Parameter Name="First_Name" Type="String" />
            <asp:Parameter Name="Cattle" Type="String" />
            <asp:Parameter Name="Liter" Type="Decimal" />
            <asp:Parameter Name="Fate" Type="Decimal" />
            <asp:Parameter Name="Total_price" Type="Decimal" />
            <asp:Parameter Name="Date" Type="String" />
            <asp:Parameter Name="Session" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Ac_ID" Type="Int32" />
            <asp:Parameter Name="First_Name" Type="String" />
            <asp:Parameter Name="Cattle" Type="String" />
            <asp:Parameter Name="Liter" Type="Decimal" />
            <asp:Parameter Name="Fate" Type="Decimal" />
            <asp:Parameter Name="Total_price" Type="Decimal" />
            <asp:Parameter Name="Date" Type="String" />
            <asp:Parameter Name="Session" Type="String" />
            <asp:Parameter Name="original_M_ID" Type="Decimal" />
            <asp:Parameter Name="original_Ac_ID" Type="Int32" />
            <asp:Parameter Name="original_First_Name" Type="String" />
            <asp:Parameter Name="original_Cattle" Type="String" />
            <asp:Parameter Name="original_Liter" Type="Decimal" />
            <asp:Parameter Name="original_Fate" Type="Decimal" />
            <asp:Parameter Name="original_Total_price" Type="Decimal" />
            <asp:Parameter Name="original_Date" Type="String" />
            <asp:Parameter Name="original_Session" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    </fieldset>

</div>
</asp:Content>

