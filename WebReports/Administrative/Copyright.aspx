<%@ Page Language="C#" MasterPageFile="~/WebReports.Master" AutoEventWireup="true" CodeBehind="Copyright.aspx.cs" Inherits="WebReports.Administrative.Copyright" Title="ILLiad Reports - Administrative - Copyright" %>

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
    <uc:ParametersControl ID="parametersControl" ReportTitle="Administrative - Copyright" AskSitesAndGroups="GroupsBySite" AskBeginDate="true" AskEndDate="true" runat="server" />  
    <br />
    <uc2:ExportManagerControl ID="ExportManagerControl1" FileNamePrefix="CopyrightInformation" runat="server" />
    <br />
    <dxwgv:ASPxGridView ID="ASPxGridViewFinished" runat="server" CssClass="ReportResultsTable"
        Visible="False" 
        OnCustomColumnDisplayText="CustomColumnDisplayTextEvent_Triggered" 
        EnableRowsCache="False">
        <Settings ShowTitlePanel="True" ShowGroupedColumns="True" ShowGroupFooter="VisibleIfExpanded" ShowGroupPanel="True" />
        <Styles>
            <Header CssClass="ReportResultsTableHeader" Wrap="True">
            </Header>
            <TitlePanel CssClass="ReportResultsTableTitle">
            </TitlePanel>
            <AlternatingRow Enabled="True" CssClass="ReportResultsTableAlternatingRow">
            </AlternatingRow>
            <GroupRow Wrap="True">
            </GroupRow>
            <GroupPanel Wrap="True">
            </GroupPanel>
            <GroupFooter Wrap="True">
            </GroupFooter>
        </Styles>
        <SettingsText Title="Finished Requests with Copyright Fees" />
        <SettingsPager>
            <AllButton Visible="True">
            </AllButton>
        </SettingsPager>
        <SettingsBehavior ColumnResizeMode="NextColumn" />
    </dxwgv:ASPxGridView>
    <br />
    <dxwgv:ASPxGridView ID="ASPxGridViewOutstanding" runat="server" CssClass="ReportResultsTable"
        Visible="False" 
        OnCustomColumnDisplayText="CustomColumnDisplayTextEvent_Triggered" 
        EnableRowsCache="False">
        <Settings ShowTitlePanel="True" ShowGroupedColumns="True" ShowGroupFooter="VisibleIfExpanded" ShowGroupPanel="True" />
        <Styles>
            <Header CssClass="ReportResultsTableHeader" Wrap="True">
            </Header>
            <TitlePanel CssClass="ReportResultsTableTitle">
            </TitlePanel>
            <AlternatingRow Enabled="True" CssClass="ReportResultsTableAlternatingRow">
            </AlternatingRow>
            <GroupRow Wrap="True">
            </GroupRow>
            <GroupPanel Wrap="True">
            </GroupPanel>
            <GroupFooter Wrap="True">
            </GroupFooter>
        </Styles>
        <SettingsText Title="Outstanding Requests with Copyright  Fees" />
        <SettingsPager>
            <AllButton Visible="True">
            </AllButton>
        </SettingsPager>
        <SettingsBehavior ColumnResizeMode="NextColumn" />
    </dxwgv:ASPxGridView>
    <br />
    <dxwgv:ASPxGridView ID="ASPxGridViewCompleted" runat="server" CssClass="ReportResultsTable"
        Visible="False" 
        OnCustomColumnDisplayText="CustomColumnDisplayTextEvent_Triggered" 
        EnableRowsCache="False">
        <Styles>
            <Header CssClass="ReportResultsTableHeader" Wrap="True">
            </Header>
            <TitlePanel CssClass="ReportResultsTableTitle">
            </TitlePanel>
            <AlternatingRow Enabled="True" CssClass="ReportResultsTableAlternatingRow">
            </AlternatingRow>
            <GroupRow Wrap="True">
            </GroupRow>
            <GroupPanel Wrap="True">
            </GroupPanel>
            <GroupFooter Wrap="True">
            </GroupFooter>
        </Styles>
        <SettingsText Title="Completed Copyright Orders" />
        <Settings ShowTitlePanel="True" ShowGroupedColumns="True" ShowGroupFooter="VisibleIfExpanded" ShowGroupPanel="True" />
        <SettingsPager>
            <AllButton Visible="True">
            </AllButton>
        </SettingsPager>
        <SettingsBehavior ColumnResizeMode="NextColumn" />
    </dxwgv:ASPxGridView>
    <br />
</asp:Content>
