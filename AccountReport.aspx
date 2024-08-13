<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="AccountReport.aspx.cs" Inherits="AccountReport" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <link href="Styles/AddAccount.css" rel="stylesheet" type="text/css" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div align="center" style="height: 616px">
    
  
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    <center>
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Arial Black" 
            Font-Size="Large" Font-Underline="True" ForeColor="#0000CC" 
            Text="ACCOUNT REPORT"></asp:Label>
        <br />
        <br />
        <br />
        <br />
    <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" 
            Font-Size="8pt" Height="323px" InteractiveDeviceInfos="(Collection)" 
            WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="679px" 
            BackColor="Aqua" BorderStyle="Outset" 
           >
        <LocalReport ReportPath="ReportAc.rdlc">
            <DataSources>
                <rsweb:ReportDataSource DataSourceId="ObjectDataSource2" Name="DataSet1" />
            </DataSources>
        </LocalReport>
    </rsweb:ReportViewer>
    
        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
            SelectMethod="GetData" 
            TypeName="DataSet_AccountTableAdapters.Account_TBTableAdapter">
        </asp:ObjectDataSource>
    
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
            SelectMethod="GetData" 
            TypeName="Milk_DairyDataSetTableAdapters.Account_TBTableAdapter">
        </asp:ObjectDataSource>
    </center>
</div>
</asp:Content>

