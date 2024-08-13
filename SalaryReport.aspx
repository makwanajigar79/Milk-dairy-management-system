<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="SalaryReport.aspx.cs" Inherits="SalaryReport" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <head>
    <link href="Styles/AddAccount.css" rel="stylesheet" type="text/css" />

    <style type="text/css">
    .lbl
    {
        font-family :Arial Black;
        font-size :medium;
    }
    </style>
    </head>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <br />
    <center>
        <asp:Label ID="lblHeader" runat="server" Font-Bold="True" 
        Font-Names="Arial Black" Font-Size="Large" Font-Underline="True" 
        ForeColor="#000099" Text="SALARY REPORT"></asp:Label>
        </center>

    <br />

    <br />
<br />
   <center>
    <rsweb:ReportViewer ID="ReportViewer1" runat="server" Width="665px" 
           Font-Names="Verdana" Font-Size="8pt" InteractiveDeviceInfos="(Collection)" 
           WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" 
           BackColor="#66FFFF" BorderStyle="Outset" >
        <LocalReport ReportPath="Report_Salary.rdlc">
            <DataSources>
                <rsweb:ReportDataSource DataSourceId="ObjectDataSource2" 
                    Name="DataSet_Salary" />
            </DataSources>
        </LocalReport>
    </rsweb:ReportViewer>
       <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
           SelectMethod="GetData" 
           TypeName="Milk_Dairy_Salary_DataSetTableAdapters.Salary_TBTableAdapter">
       </asp:ObjectDataSource>
       <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
           SelectMethod="GetData" 
           TypeName="Milk_DairyDataSetTableAdapters.Salary_TBTableAdapter">
       </asp:ObjectDataSource>
    </center>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    </asp:Content>

