<%@ Page Language="C#" MasterPageFile="~/WebReports.Master" AutoEventWireup="true" CodeBehind="FillRateStatistics.aspx.cs" Inherits="WebReports.DocumentDelivery.FillRateStatistics" Title="ILLiad Reports - Document Delivery - Fill Rate Statistics" %>

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
    <asp:UpdateProgress ID="UpdateProgress2" runat="server">
        <ProgressTemplate>
            <div class="UpdateProgressDiv" style="left: 35%; top: 50%" >
                <br />
                Updating chart display...
                <br />
            </div>
        </ProgressTemplate>
    </asp:UpdateProgress>
    <uc:ParametersControl ID="parametersControl" ReportTitle="Document Delivery - Fill Rate Statistics" AskUserStatuses="true" AskSitesAndGroups="GroupsBySite" AskBeginDate="true" AskEndDate="true" runat="server" />
    <br />
    <uc2:ExportManagerControl ID="ExportManagerControl1" FileNamePrefix="DocDelFillRate" runat="server" />
    <br />
    <asp:UpdatePanel id="UpdatePanel2" runat="server">
        <contenttemplate>
            <uc1:ChartOptionsControl ID="ChartOptionsControl1" ChartType="Pie3D" runat="server" Visible="false" />
            <br />
    <dxchartsui:WebChartControl ID="WebChartControlArticles" runat="server" Height="302px"
        Visible="False" Width="354px" PaletteName="Oriel">
        <FillStyle >
            <OptionsSerializable>
<cc1:SolidFillOptions HiddenSerializableString="to be serialized" />
</OptionsSerializable>
        </FillStyle>
        <SeriesTemplate  
            >
            <PointOptionsSerializable>
<cc1:PointOptions HiddenSerializableString="to be serialized">
            </cc1:PointOptions>
</PointOptionsSerializable>
            <LabelSerializable>
<cc1:SideBySideBarSeriesLabel HiddenSerializableString="to be serialized">
                <FillStyle >
                    <OptionsSerializable>
<cc1:SolidFillOptions HiddenSerializableString="to be serialized" />
</OptionsSerializable>
                </FillStyle>
            </cc1:SideBySideBarSeriesLabel>
</LabelSerializable>
            <ViewSerializable>
<cc1:SideBySideBarSeriesView HiddenSerializableString="to be serialized">
            </cc1:SideBySideBarSeriesView>
</ViewSerializable>
        </SeriesTemplate>
        <Titles>
            <cc1:ChartTitle Text="Article Fill Rates">
            </cc1:ChartTitle>
        </Titles>
        <Legend AlignmentHorizontal="Center" AlignmentVertical="BottomOutside" Direction="LeftToRight">
        </Legend>
    </dxchartsui:WebChartControl>
    <dxchartsui:WebChartControl ID="WebChartControlLoans" runat="server" Height="302px"
        Visible="False" Width="354px" PaletteName="Oriel">
        <Titles>
            <cc1:ChartTitle Text="Loan Fill Rates">
            </cc1:ChartTitle>
        </Titles>
        <FillStyle >
            <OptionsSerializable>
<cc1:SolidFillOptions HiddenSerializableString="to be serialized" />
</OptionsSerializable>
        </FillStyle>
        <SeriesTemplate  
            >
            <PointOptionsSerializable>
<cc1:PointOptions HiddenSerializableString="to be serialized">
            </cc1:PointOptions>
</PointOptionsSerializable>
            <LabelSerializable>
<cc1:SideBySideBarSeriesLabel HiddenSerializableString="to be serialized">
                <FillStyle >
                    <OptionsSerializable>
<cc1:SolidFillOptions HiddenSerializableString="to be serialized" />
</OptionsSerializable>
                </FillStyle>
            </cc1:SideBySideBarSeriesLabel>
</LabelSerializable>
            <ViewSerializable>
<cc1:SideBySideBarSeriesView HiddenSerializableString="to be serialized">
            </cc1:SideBySideBarSeriesView>
</ViewSerializable>
        </SeriesTemplate>
        <Legend AlignmentHorizontal="Center" AlignmentVertical="BottomOutside" Direction="LeftToRight">
        </Legend>
    </dxchartsui:WebChartControl></contenttemplate>
    </asp:UpdatePanel>
    <br />
    <dxwgv:ASPxGridView ID="ASPxGridViewResults" runat="server" Visible="False" 
        CssClass="ReportResultsTable" EnableRowsCache="False">
        <Styles>
            <AlternatingRow Enabled="True" CssClass="ReportResultsTableAlternatingRow">
            </AlternatingRow>
            <Header CssClass="ReportResultsTableHeader">
            </Header>
        </Styles>
        <SettingsPager>
            <AllButton Visible="True">
            </AllButton>
        </SettingsPager>
    </dxwgv:ASPxGridView>
</asp:Content>
