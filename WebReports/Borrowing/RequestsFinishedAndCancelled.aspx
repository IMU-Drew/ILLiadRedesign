<%@ Page Language="C#" MasterPageFile="~/WebReports.Master" AutoEventWireup="true" CodeBehind="RequestsFinishedAndCancelled.aspx.cs" Inherits="WebReports.Borrowing.RequestsFinishedAndCancelled" Title="ILLiad Reports - Borrowing - Requests Finished and Cancelled" %>

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
    <asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel1">
        <ProgressTemplate>
            <div class="UpdateProgressDiv" >
                <br />
                Updating chart display...
                <br />
            </div>
        </ProgressTemplate>
    </asp:UpdateProgress>
    <uc:ParametersControl ID="parametersControl" ReportTitle="Borrowing - Requests Finished and Cancelled" AskSitesAndGroups="Sites" AskRequestType="true" AskBeginDate="true" AskEndDate="true" runat="server" />  
    <br />
    <uc2:ExportManagerControl ID="ExportManagerControl1" FileNamePrefix="ReqFinishedCancelled" runat="server" />
    <br />
    <asp:UpdatePanel id="UpdatePanel1" runat="server">
        <contenttemplate>
            <uc1:ChartOptionsControl ID="ChartOptionsControl1" DefaultLabelSetting="false" ChartType="Pie3D" runat="server" Visible="false" />
            &nbsp;&nbsp;<br />
            <dxchartsui:WebChartControl ID="WebChartControlFinished" runat="server" Height="300px"
                Visible="False" Width="715px">
                <Titles>
                    <cc1:ChartTitle Text="Finished and Cancelled">
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
                <Legend AlignmentVertical="Center" MarkerSize="12, 12" MaxHorizontalPercentage="60" SpacingHorizontal="1" SpacingVertical="1">
                </Legend>
            </dxchartsui:WebChartControl>
            <dxchartsui:WebChartControl ID="WebChartControlCancelled" runat="server" Height="300px"
                Visible="False" Width="715px">
                <Titles>
                    <cc1:ChartTitle Text="Cancelled by Reason">
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
                <Legend AlignmentVertical="Center" MarkerSize="12, 12" MaxHorizontalPercentage="60" SpacingHorizontal="1" SpacingVertical="1">
                </Legend>
            </dxchartsui:WebChartControl>
    </contenttemplate>
    </asp:UpdatePanel>
    <br />
    <dxwgv:ASPxGridView ID="ASPxGridView1" runat="server" CssClass="ReportResultsTable"
        Visible="False" EnableRowsCache="False">
        <Styles>
            <Header CssClass="ReportResultsTableHeader">
            </Header>
            <AlternatingRow Enabled="True" CssClass="ReportResultsTableAlternatingRow">
            </AlternatingRow>
        </Styles>
        <SettingsPager>
            <AllButton Visible="True">
            </AllButton>
        </SettingsPager>
    </dxwgv:ASPxGridView>
    <dxe:ASPxLabel ID="ASPxLabelTotalFinished" runat="server" Text="Total Number of Requests Finished:" Visible="False" Font-Bold="True">
    </dxe:ASPxLabel>
    &nbsp; &nbsp;
    <dxe:ASPxLabel ID="ASPxLabelTotalCancelled" runat="server" Text="Total Number of Requests Cancelled:" Visible="False" Font-Bold="True">
    </dxe:ASPxLabel>
    &nbsp; &nbsp; &nbsp;<dxe:ASPxLabel ID="ASPxLabelTotalRequests" runat="server" Text="Total Number of Requests:" Visible="False" Font-Bold="True">
    </dxe:ASPxLabel>
</asp:Content>
