<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="SalarySetting.aspx.cs" Inherits="SalarySetting" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <link href="Styles/AddAccount.css" rel="stylesheet" type="text/css" />
    <style type="text/css">

    .lbl
    {
        font-family :Arial Black;
        font-size :medium;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
   
    <center>
        <br />
        <asp:Label ID="lblAcid" runat="server" Text="Account ID" class="lbl"></asp:Label>
    &nbsp;
        <asp:TextBox ID="txtAcid" runat="server" class="textbox" 
            ontextchanged="txtAcid_TextChanged"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Name" class="lbl"></asp:Label>
    &nbsp;
        <asp:TextBox ID="txtName" runat="server" class="textbox" ReadOnly="True"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblCattle" runat="server" Text="Cattle" class="lbl"></asp:Label>
    &nbsp;
        <asp:TextBox ID="txtCattle" runat="server" class="textbox" ReadOnly="True"></asp:TextBox>
        <br />
        <br />
        <br />
        <div>
        <asp:Button ID="btnSearch" runat="server" Text="Search" align="Left" class="Button" 
            onclick="btnSearch_Click" />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblLiter" runat="server" Text="Liter">
        </asp:Label>
&nbsp;<asp:Label ID="lblTotal" runat="server" >Total</asp:Label>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            
            SelectCommand="SELECT [Ac_ID], [First_Name], [Cattle], [Liter], [Total_price], [Date] FROM [Milk_Data_TB] WHERE ([Ac_ID] = @Ac_ID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtAcid" Name="Ac_ID" PropertyName="Text" 
                    Type="Decimal" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
            CellPadding="4" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Ac_ID" HeaderText="Ac_ID" SortExpression="Ac_ID" />
                <asp:BoundField DataField="First_Name" HeaderText="First_Name" 
                    SortExpression="First_Name" />
                <asp:BoundField DataField="Cattle" HeaderText="Cattle" 
                    SortExpression="Cattle" />
                <asp:BoundField DataField="Liter" HeaderText="Liter" SortExpression="Liter" />
                <asp:BoundField DataField="Total_price" HeaderText="Total_price" 
                    SortExpression="Total_price" />
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
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
            <br />
         </center>
            <br />
            </div>
&nbsp;
 <div align="center">
        <asp:Label ID="lblLastPaymentDate" runat="server" Font-Bold="True" 
        Font-Names="Arial Black" Font-Size="Medium" Text="Last Payment Date :" 
        ToolTip=" "></asp:Label>
&nbsp;&nbsp;&nbsp;
    <asp:Label ID="lblLastDate" runat="server" Font-Bold="True" 
        Font-Names="Arial Black" Font-Size="Medium" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="lblTodayDate" runat="server" Font-Bold="True" 
        Font-Names="Arial Black" Font-Size="Medium" Text="Today Date :"></asp:Label>
&nbsp;&nbsp;&nbsp;
    <asp:Label ID="lblTDate" runat="server" Font-Bold="True" 
        Font-Names="Arial Black" Font-Size="Medium" Text="Label"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="lblNoOfDays" runat="server" Font-Bold="True" 
        Font-Names="Arial Black" Font-Size="Medium" Text="Label" Visible="False"></asp:Label>
    <br />
    <br />
   
        <asp:Button ID="btnGenearateSal" runat="server" Text="Generate Salary" 
        align="Left" class="Button" 
            onclick="Generate_Button_Click" Width="147px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnPrint" runat="server" Text="PRINT" class="Button" 
        onclick="btnPrint_Click" />
        <br />
        </div>
    <br />
    <br />
    <br />
    <br />
    <div align="center">
    <asp:GridView ID="GridView2" runat="server" AllowSorting="True" 
        AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" 
        BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="S_ID" 
        DataSourceID="SqlDataSource2" GridLines="Horizontal" 
            onselectedindexchanged="GridView2_SelectedIndexChanged" AllowPaging="True">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                ShowSelectButton="True" />
            <asp:BoundField DataField="S_ID" HeaderText="S_ID" InsertVisible="False" 
                ReadOnly="True" SortExpression="S_ID" />
            <asp:BoundField DataField="Ac_ID" HeaderText="Ac_ID" SortExpression="Ac_ID" />
            <asp:BoundField DataField="First_Name" HeaderText="First_Name" 
                SortExpression="First_Name" />
            <asp:BoundField DataField="Cattle" HeaderText="Cattle" 
                SortExpression="Cattle" />
            <asp:BoundField DataField="Salary_From_Date" HeaderText="Salary_From_Date" 
                SortExpression="Salary_From_Date" />
            <asp:BoundField DataField="Salary_To_Date" HeaderText="Salary_To_Date" 
                SortExpression="Salary_To_Date" />
            <asp:BoundField DataField="Total_Liter" HeaderText="Total_Liter" 
                SortExpression="Total_Liter" />
            <asp:BoundField DataField="Total_Salary" HeaderText="Total_Salary" 
                SortExpression="Total_Salary" />
            <asp:BoundField DataField="Payment_Date" HeaderText="Payment_Date" 
                SortExpression="Payment_Date" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#333333" />
        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#487575" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#275353" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConflictDetection="CompareAllValues" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [Salary_TB] WHERE [S_ID] = @original_S_ID AND [Ac_ID] = @original_Ac_ID AND [First_Name] = @original_First_Name AND (([Cattle] = @original_Cattle) OR ([Cattle] IS NULL AND @original_Cattle IS NULL)) AND [Salary_From_Date] = @original_Salary_From_Date AND [Salary_To_Date] = @original_Salary_To_Date AND [Total_Liter] = @original_Total_Liter AND [Total_Salary] = @original_Total_Salary AND [Payment_Date] = @original_Payment_Date" 
        InsertCommand="INSERT INTO [Salary_TB] ([Ac_ID], [First_Name], [Cattle], [Salary_From_Date], [Salary_To_Date], [Total_Liter], [Total_Salary], [Payment_Date]) VALUES (@Ac_ID, @First_Name, @Cattle, @Salary_From_Date, @Salary_To_Date, @Total_Liter, @Total_Salary, @Payment_Date)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT * FROM [Salary_TB]" 
        UpdateCommand="UPDATE [Salary_TB] SET [Ac_ID] = @Ac_ID, [First_Name] = @First_Name, [Cattle] = @Cattle, [Salary_From_Date] = @Salary_From_Date, [Salary_To_Date] = @Salary_To_Date, [Total_Liter] = @Total_Liter, [Total_Salary] = @Total_Salary, [Payment_Date] = @Payment_Date WHERE [S_ID] = @original_S_ID AND [Ac_ID] = @original_Ac_ID AND [First_Name] = @original_First_Name AND (([Cattle] = @original_Cattle) OR ([Cattle] IS NULL AND @original_Cattle IS NULL)) AND [Salary_From_Date] = @original_Salary_From_Date AND [Salary_To_Date] = @original_Salary_To_Date AND [Total_Liter] = @original_Total_Liter AND [Total_Salary] = @original_Total_Salary AND [Payment_Date] = @original_Payment_Date">
        <DeleteParameters>
            <asp:Parameter Name="original_S_ID" Type="Decimal" />
            <asp:Parameter Name="original_Ac_ID" Type="Decimal" />
            <asp:Parameter Name="original_First_Name" Type="String" />
            <asp:Parameter Name="original_Cattle" Type="String" />
            <asp:Parameter Name="original_Salary_From_Date" Type="String" />
            <asp:Parameter Name="original_Salary_To_Date" Type="String" />
            <asp:Parameter Name="original_Total_Liter" Type="Decimal" />
            <asp:Parameter Name="original_Total_Salary" Type="Decimal" />
            <asp:Parameter Name="original_Payment_Date" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Ac_ID" Type="Decimal" />
            <asp:Parameter Name="First_Name" Type="String" />
            <asp:Parameter Name="Cattle" Type="String" />
            <asp:Parameter Name="Salary_From_Date" Type="String" />
            <asp:Parameter Name="Salary_To_Date" Type="String" />
            <asp:Parameter Name="Total_Liter" Type="Decimal" />
            <asp:Parameter Name="Total_Salary" Type="Decimal" />
            <asp:Parameter Name="Payment_Date" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Ac_ID" Type="Decimal" />
            <asp:Parameter Name="First_Name" Type="String" />
            <asp:Parameter Name="Cattle" Type="String" />
            <asp:Parameter Name="Salary_From_Date" Type="String" />
            <asp:Parameter Name="Salary_To_Date" Type="String" />
            <asp:Parameter Name="Total_Liter" Type="Decimal" />
            <asp:Parameter Name="Total_Salary" Type="Decimal" />
            <asp:Parameter Name="Payment_Date" Type="String" />
            <asp:Parameter Name="original_S_ID" Type="Decimal" />
            <asp:Parameter Name="original_Ac_ID" Type="Decimal" />
            <asp:Parameter Name="original_First_Name" Type="String" />
            <asp:Parameter Name="original_Cattle" Type="String" />
            <asp:Parameter Name="original_Salary_From_Date" Type="String" />
            <asp:Parameter Name="original_Salary_To_Date" Type="String" />
            <asp:Parameter Name="original_Total_Liter" Type="Decimal" />
            <asp:Parameter Name="original_Total_Salary" Type="Decimal" />
            <asp:Parameter Name="original_Payment_Date" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </div>
    <br />
    <asp:Label ID="lblPrintsid" runat="server" Text="Label" Visible="False"></asp:Label>
    <asp:Label ID="lblPrintAcid" runat="server" Text="Label" Visible="False"></asp:Label>
    <asp:Label ID="lblPrintFnm" runat="server" Text="Label" Visible="False"></asp:Label>
    <asp:Label ID="lblPrintCatle" runat="server" Text="Label" Visible="False"></asp:Label>
    <asp:Label ID="lblSFdate" runat="server" Text="Label" Visible="False"></asp:Label>
    <asp:Label ID="lblPrintSTdate" runat="server" Text="Label" Visible="False"></asp:Label>
    <asp:Label ID="lblPrintTotalLiter" runat="server" Text="Label" Visible="False"></asp:Label>
    <asp:Label ID="lblPrintTotal_sal" runat="server" Text="Label" Visible="False"></asp:Label>
    <asp:Label ID="lblPrintPayDate" runat="server" Text="Label" Visible="False"></asp:Label>
    <br />
&nbsp;<br />
        <br />
        <br />
   
</asp:Content>

