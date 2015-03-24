<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ExportManagerControl.ascx.cs" Inherits="WebReports.CustomControls.ExportManagerControl" %>
<%@ Register Assembly="DevExpress.Web.ASPxEditors.v11.2, Version=11.2.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dxe" %>
<%@ Register Assembly="DevExpress.Web.ASPxGridView.v11.2.Export, Version=11.2.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxGridView.Export" TagPrefix="cc1" %>
<table id="ExportOptionsTable" class="ExportOptionsTable" style="visible: false">
    <tr>
        <td class="ExportOptionsHeader">
            Export Options</td>
    </tr>
    <tr>
        <td class="ChartOptionsBody">
            <table style="width: 100%">
                <tr>
                    <td style="height: 35px" valign="middle" align="left">
                        <div class="ExportOptionsDescText"><asp:Literal ID="LiteralExportOptionsDescText" runat="server" Text="Exporting to Microsoft Excel creates a multi-sheet workbook for this report with parameters, graphs (if applicable) and grids of all data.  Any grouping or sorting you do before clicking export will change the display of the data in Excel."></asp:Literal></div></td>
                    <td align="right" style="height: 35px" valign="middle">
                        <asp:Button ID="ButtonExportAll" runat="server" CssClass="ExportOptionsButton ExportChartsButtonLong"
                            OnClick="ButtonExportAll_Click" Text="Export To Microsoft Excel" /></td>
                </tr>
            </table>
        </td>
    </tr>
</table>
<cc1:aspxgridviewexporter id="ExportManagerASPxGridViewExporter" runat="server">
    <Styles>
        <Header BackColor="#C0FFFF">
        </Header>
    </Styles>
</cc1:aspxgridviewexporter>
                        <asp:DropDownList ID="DropDownListExportObjects" runat="server" Width="169px" Visible="False">
                        </asp:DropDownList>
                        <asp:Button ID="ButtonSingle" runat="server" CssClass="ExportChartsButton" OnClick="ButtonSingle_Click"
                            Text="Export" Visible="False" />
                        <asp:Button ID="ButtonExportCharts" runat="server" CssClass="ExportOptionsButton ExportChartsButtonLong"
                            Text="Export Charts" Visible="False" OnClick="ButtonExportCharts_Click" />
                        <asp:Button ID="ButtonExportGrids" runat="server" CssClass="ExportOptionsButton ExportChartsButtonLong"
                            OnClick="ButtonExportGrids_Click" Text="Export Grids" Visible="False" />
