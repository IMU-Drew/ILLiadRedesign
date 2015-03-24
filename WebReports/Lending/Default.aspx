<%@ Page Language="C#" MasterPageFile="~/WebReports.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebReports.Lending.Default" Title="ILLiad Reports - Lending" %>
<asp:Content ID="Content1" ContentPlaceHolderID="BodyPlaceholder" runat="server">
<h2>Lending Reports</h2>
		
		<p><a runat="server" href="~/Lending/FillRateStatistics.aspx">Fill Rate Statistics</a><br />
		This report lists all items received within the selected date range and their current status. Depending on the date range, items may still be in process until they are cancelled, conditionalized or completed.</p>
		
		<p><a runat="server" href="~/Lending/WhoWeLendTo.aspx">Who We Lend To</a><br />
		This report lists the library symbol and name of institutions who have received more than X number of requests. 
		The date range selected notes the date that the request was submitted and not necessarily the date range where the request was filled. 
		Items are counted as filled if they have a current transaction status of Request Finished or Item Shipped.</p>
				
		<p><a runat="server" href="~/Lending/RequestsReceivedByDay.aspx">Requests Received by Day</a><br />
		This report shows the number of requests received each day of the given time period. 
		Items are counted as received if they have had a status of Imported from OCLC or Docline,  Awaiting ISO ILL Request Processing, Awaiting Local Request Processing, Request Added Through Client 
		or Submitted via Lending Web.</p>
				
		<p><a runat="server" href="~/Lending/RequestsReceivedBySystemID.aspx">Requests Received by System ID</a><br />
		This report shows the number of requests received by each system id in the database for the given time period. 
		The items received are broken down by articles and loans. Items are counted as received if they have had a status of 
		Imported from OCLC or Docline,  Awaiting ISO ILL Request Processing, Awaiting Local Request Processing, Request Added Through Client or Submitted via Lending Web.</p>
				
		<p><a runat="server" href="~/Lending/RequestsFilledByDay.aspx">Requests Filled by Day</a><br />
		This report shows the number of requests filled each day of the given time period. 
		The date range is based off of the date that the request is either moved to Request Finished or Item Shipped. 
		If a transaction has gone to that status more than once or both statuses, only the first instance of that transaction number is counted as the date it was filled.</p>
			
		<p><a runat="server" href="~/Lending/RequestsFilledAndUnfilled.aspx">Requests Filled and Unfilled</a><br />
		This report shows the number of requests finished or cancelled within the given time period. 
		The date range is based off of the date the request was finished or cancelled, not when it was received. 
		Those requests cancelled are then broken down by their reason for cancellation. 
		The finished requests include any item that has gone to Request Finished or Item Shipped. 
		The cancelled requests include any items at either a status of Cancelled by ILL Staff. 
		All the dates for this report are based off of the current TransactionDate and not from any entries in the Tracking table. The report can show articles, loans or both request types.</p>
				
		<p><a runat="server" href="~/Lending/MostLoanedJournals.aspx">Most Loaned Journals</a><br />
		This report lists the distinct journal title (including the OCLC number or ISSN) and the number of requests that were submitted within the selected date range and are currently at a status of Request Finished. 
		So this report only shows journals that are successfully filled.</p>
				
		<p><a runat="server" href="~/Lending/MostLoanedMonographs.aspx">Most Loaned Monographs</a><br /></p>
		
		<p><a runat="server" href="~/Lending/MostUnfilledJournals.aspx">Most Unfilled Journals</a><br /></p>
				
		<p><a runat="server" href="~/Lending/TurnaroundTime.aspx">Turnaround Time</a><br />
		This report shows the average time difference for articles, loans or both request types. 
		The date range selected is based off of date and time the request was filled (Request Finished or Item Shipped) and not the date it was received (which may be before that date range selection).</p>

        <p><a runat="server" href="~/Lending/RequestsFromLendingWeb.aspx">Requests From Lending Web Page</a><br /></p>
				
		<p><a runat="server" href="~/Lending/IFMCharges.aspx">IFM Charges</a><br />
		This report shows a list of transaction numbers, borrowing library symbol, ILL Number, the site that filled the request and the charges for the request. 
		The date range is based off of the date the request was added to the billing table. The only requests that show in this report are those that have a current status of Request Finished or Item Shipped.</p>
</asp:Content>
