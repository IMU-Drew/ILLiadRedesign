<%@ Page Language="C#" MasterPageFile="~/WebReports.Master" AutoEventWireup="true" CodeBehind="RegisteredUsersByDepartment.aspx.cs" Inherits="WebReports.Borrowing.RegisteredUsersByDepartment" Title="ILLiad Reports - Borrowing - Registered Users By Department" %>

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
    <asp:UpdateProgress ID="UpdateProgress2" runat="server" AssociatedUpdatePanelID="UpdatePanel2">
        <ProgressTemplate>
            <div class="UpdateProgressDiv" >
                <br />
                Updating chart display...
                <br />
            </div>
        </ProgressTemplate>
    </asp:UpdateProgress>
    <uc:ParametersControl ID="parametersControl" ReportTitle="Borrowing - Registered Users By Department" NumberOfUsersDefaultValue="200" AskSitesAndGroups="Sites" AskIncludeDisavowed="true" AskNumberOfUsers="true" NumberOfUsersLabelText="Number of Users in Department before inclusion on Graph" runat="server" />  
    <br />
    <uc2:ExportManagerControl ID="ExportManagerControl1" FileNamePrefix="RegUsersByDept" runat="server" />
    <br />
    <asp:UpdatePanel id="UpdatePanel2" runat="server">
        <contenttemplate>
            <uc1:ChartOptionsControl ID="ChartOptionsControl1" ChartType="Pie3D" runat="server" Visible="false" />
            &nbsp;<asp:Table ID="ChartsTable" runat="server" Visible="False" Width="715px">
            </asp:Table>
    </contenttemplate>
    </asp:UpdatePanel>
    <br />
    <div class="OverflowContainerDiv">
        <dxwgv:ASPxGridView ID="ASPxGridView1" runat="server" Visible="False" 
            CssClass="ReportResultsTable" EnableRowsCache="False" 
            oncustomsummarycalculate="ASPxGridView1_CustomSummaryCalculate">
            <Styles>
                <Header CssClass="ReportResultsTableHeader" Wrap="True">
                </Header>
                <AlternatingRow Enabled="True" CssClass="ReportResultsTableAlternatingRow">
                </AlternatingRow>
            </Styles>
            <SettingsPager PageSize="20">
                <AllButton Visible="True">
                </AllButton>
            </SettingsPager>
        </dxwgv:ASPxGridView>
    </div>
    <br />
    <dxe:ASPxLabel ID="ASPxLabelElecDelStats" runat="server" Font-Bold="True" Text="Total Number of Users signed up for Electronic Delivery:"
        Visible="False">
    </dxe:ASPxLabel>
    <br />
    <dxe:ASPxLabel ID="ASPxLabelReportNotice" runat="server" ForeColor="Red" Text="Note: Report does not include users without a status and/or department."
        Visible="False">
    </dxe:ASPxLabel>
</asp:Content>
