<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ParametersControl.ascx.cs" Inherits="WebReports.CustomControls.ParametersControl" %>
<%@ Register Assembly="DevExpress.Web.ASPxEditors.v11.2, Version=11.2.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dxe" %>
<dxe:ASPxLabel ID="ASPxLabelPrintingReportTitle" runat="server" CssClass="PrintingReportTitle"
    Text="ASPxLabel">
</dxe:ASPxLabel>
<asp:Table ID="ParametersTable" runat="server" CssClass="ParameterRequestTable">
</asp:Table>
    <asp:Table ID="ResultsParameterTable" runat="server" CssClass="ParameterResultsTable">
    </asp:Table>