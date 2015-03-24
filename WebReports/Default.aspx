<%@ Page Language="C#" MasterPageFile="~/WebReports.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebReports._Default" %>

<%@ Register Assembly="DevExpress.XtraReports.v11.2.Web, Version=11.2.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.XtraReports.Web" TagPrefix="dxwc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyPlaceholder" runat="server">
	<div id="MenuBlockWithDescriptions">
		<p><a runat="server" href="~/Borrowing/Default.aspx">Borrowing Reports</a><br />
    	The Borrowing Reports contain statistics for requests and users within the Borrowing module.</p>

		<p><a runat="server" href="~/Lending/Default.aspx">Lending Reports</a><br />
    	The Lending Reports contain statistics for requests and libraries within the Lending module.</p>
  		
		<p><a runat="server" href="~/DocumentDelivery/Default.aspx">Document Delivery Reports</a><br />
    	The Document Delivery Reports contain statistics for requests and users within the Document Delivery module.</p>

		<p><a runat="server" href="~/Administrative/Default.aspx">Administrative Reports</a><br />
    	The Administrative Reports include statisitics not necessarily pertaining to any one module or reports with more sensitive data in them (i.e. customer information or monetary costs).</p>
	</div>
</asp:Content>
