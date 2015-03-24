<%@ Page Language="C#" MasterPageFile="~/WebReports.Master" AutoEventWireup="true" CodeBehind="DeliveryTimeDistribution.aspx.cs" Inherits="WebReports.Borrowing.DeliveryTimeDistribution" Title="ILLiad Reports - Borrowing - Delivery Time Distribution" %>

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
    <asp:UpdateProgress ID="UpdateProgress2" runat="server" AssociatedUpdatePanelID="UpdatePanel2">
            <ProgressTemplate>
            <div class="UpdateProgressDiv" >
                <br />
                Updating chart display...
                <br />
            </div>
        </ProgressTemplate>
    </asp:UpdateProgress>
    <uc:ParametersControl ID="parametersControl" ReportTitle="Borrowing - Delivery Time Distribution" AskMonth="true" AskYear="true" AskSitesAndGroups="GroupsBySite" runat="server" />  
    <br />
    <uc2:ExportManagerControl ID="ExportManagerControl1" FileNamePrefix="DeliveryTimeDist" runat="server" />
    <br />
    <asp:UpdatePanel id="UpdatePanel1" runat="server">
        <contenttemplate>
            <uc1:ChartOptionsControl ID="ChartOptionsControl1" ChartType="Line3D" DefaultLabelSetting="false" runat="server" Visible="false" />
            &nbsp;&nbsp;<br />
            <dxchartsui:WebChartControl ID="WebChartControlDistribution" runat="server" Height="475px" Width="715px" Visible="False" >
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
                    <LegendPointOptionsSerializable>
<cc1:PointOptions HiddenSerializableString="to be serialized">
                    </cc1:PointOptions>
</LegendPointOptionsSerializable>
                </SeriesTemplate>
                <Titles>
                    <cc1:ChartTitle Text="Delivery Time Distribution">
                    </cc1:ChartTitle>
                </Titles>
                <Legend AlignmentHorizontal="Right"></Legend>
            </dxchartsui:WebChartControl>
    </contenttemplate>
    </asp:UpdatePanel>
    <br />
    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
        <ContentTemplate>
            <uc1:ChartOptionsControl ID="ChartOptionsControl2" ChartType="Line3D" DefaultLabelSetting="false" runat="server" Visible="false" />
            <br />
            <dxchartsui:WebChartControl ID="WebChartControlCumulativePercentage" runat="server" Height="475px" Width="715px" Visible="False" >
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
                    <cc1:ChartTitle Text="Cumulative Percentage of Items Delivered">
                    </cc1:ChartTitle>
                </Titles>
                <Legend AlignmentHorizontal="Right"></Legend>
                                        <DiagramSerializable>
<cc1:XYDiagram3D PerspectiveEnabled="True" RotationAngleY="-20" RotationOrder="XYZ" RotationType="UseAngles" VerticalScrollPercent="4" ZoomPercent="140">
                            <axisy>
<Range SideMarginsEnabled="True" AlwaysShowZeroLevel="False"></Range>
</axisy>
                            <axisx datetimemeasureunit="Year" datetimeoptions-format="Custom" datetimeoptions-formatstring="yyyy">
<Range SideMarginsEnabled="True"></Range>
</axisx>
                        </cc1:XYDiagram3D>
</DiagramSerializable>
            </dxchartsui:WebChartControl>
        </ContentTemplate>
    </asp:UpdatePanel>
    <br />
    &nbsp;
</asp:Content>
