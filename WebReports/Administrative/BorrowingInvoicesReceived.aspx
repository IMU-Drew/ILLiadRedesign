<%@ Page Language="C#" MasterPageFile="~/WebReports.Master" AutoEventWireup="true" CodeBehind="BorrowingInvoicesReceived.aspx.cs" Inherits="WebReports.Administrative.BorrowingInvoicesReceived" Title="ILLiad Reports - Administrative - Borrowing Invoices Received" %>

<%@ Register Src="../CustomControls/ExportManagerControl.ascx" TagName="ExportManagerControl"
    TagPrefix="uc2" %>

<%@ Register Src="../CustomControls/ChartOptionsControl.ascx" TagName="ChartOptionsControl"
    TagPrefix="uc1" %>

<%@ Register Assembly="System.Web.Extensions, Version=1.0.61025.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI" TagPrefix="asp" %>

<%@ Register Assembly="DevExpress.XtraCharts.v11.2.Web, Version=11.2.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.XtraCharts.Web" TagPrefix="dxchartsui" %>
<%@ Register Assembly="DevExpress.XtraCharts.v11.2, Version=11.2.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.XtraCharts" TagPrefix="cc1" %>
<%@ Register Assembly="DevExpress.Web.ASPxGridView.v11.2, Version=11.2.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dxwgv" %>
<%@ Register Assembly="DevExpress.Web.ASPxEditors.v11.2, Version=11.2.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dxe" %>
<%@ Register Src="~/CustomControls/ParametersControl.ascx" TagName="ParametersControl" TagPrefix="uc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="BodyPlaceholder" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <uc:ParametersControl ID="parametersControl" ReportTitle="Administrative - Borrowing Invoices Received" AskSitesAndGroups="GroupsBySite" AskBeginDate="true" AskEndDate="true" runat="server" />  
    <br />
    <uc2:ExportManagerControl ID="ExportManagerControl1" FileNamePrefix="BorrowingInvoicesRcvd" runat="server" />
    <br />
    <div class="OverflowContainerDiv">
        <dxwgv:ASPxGridView ID="ASPxGridView1" runat="server" CssClass="ReportResultsTable"
            Visible="False" 
            OnCustomColumnDisplayText="ASPxGridView1_CustomColumnDisplayText" 
            EnableRowsCache="False">
            <Styles>
                <Header CssClass="ReportResultsTableHeader">
                </Header>
                <AlternatingRow Enabled="True" CssClass="ReportResultsTableAlternatingRow">
                </AlternatingRow>
            </Styles>
            <SettingsPager PageSize="25">
                <AllButton Visible="True">
                </AllButton>
            </SettingsPager>
            <Settings ShowGroupedColumns="True" ShowGroupFooter="VisibleIfExpanded" ShowGroupPanel="True" />
        </dxwgv:ASPxGridView>
    </div>
</asp:Content>
