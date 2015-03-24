<%@ Page Language="C#" MasterPageFile="~/WebReports.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebReports.DocumentDelivery.Default" Title="ILLiad Reports - Document Delivery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="BodyPlaceholder" runat="server">
<h2>Document Delivery Reports</h2>
			<p><a runat="server" href="~/DocumentDelivery/FillRateStatistics.aspx">Fill Rate Statistics</a><br />
			This report lists all items received within the selected date range and their current status. Depending on the date range, items may still be in process until they are cancelled or completed.</p>
			
			<p><a runat="server" href="~/DocumentDelivery/MostFilledJournals.aspx">Most Filled Journals</a>h3>
			This report lists the distinct journal title and the number of requests that were submitted withing the selected date range 
			and are currently at a status of either Delivered to Web or Request Finished. So this report only shows journals that are successfully filled and have a process type of Doc Del.</p>
				
			<p><a runat="server" href="~/DocumentDelivery/RequestsReceivedByDay.aspx">Requests Received by Day</a><br />
			This report shows the number of requests received each day of the given time period. 
			There is an option to choose requests that are submitted and then resubmitted again as a single request or two separate requests. 
			This report will only show items that have a current process type of Doc Del, so Doc Del requests that were then attempted and then routed to Borrowing will not show.</p>
				
			<p><a runat="server" href="~/DocumentDelivery/RequestsFilledByDay.aspx">Requests Filled by Day</a><br />
			This report shows the number of requests filled each day of the given time period. 
			The date range is based off of the date that the request is either moved to Request Finished or Delivered to Web. 
			If a transaction has gone to that status more than once or both statuses, only the first instance of that transaction number is counted as the date it was filled.</p>
				
			<p><a runat="server" href="~/DocumentDelivery/TurnaroundTime.aspx">Turnaround Time</a><br />
			This report shows the average time difference for articles, loans and  both request types. 
			The date range selected is based off of date and time the request reached its final status (Delivered to Web, Request Finished, Checked Out to Customer, etc.) 
			and not the date it was submitted (which may be before that date range selection). Requests are only counted if the current process type is Doc Del.</p>
				
			<p><a runat="server" href="~/DocumentDelivery/ElecDelTurnaroundTime.aspx">Elec Del Turnaround Time</a>h3>
			This report is very similar to the Turnaround Time report except that it only shows those articles that were delivered electronically. 
			The date range selected is based off of date and time the request reached Delivered to Web and not the date it was 
			submitted (which may be before that date range selection). Requests are only counted if the current process type is Doc Del.</p>

				
			<p><a runat="server" href="~/DocumentDelivery/RequestsByDepartmentAndUserStatus.aspx">Requests by Department and User Status</a><br />
			This report shows a list of departments and the number of requests received by each user status within the given time period. 
			The report does not take into account the requests' current status but does exclude any requests for users with blank departments. Requests are only counted if the current process type is Doc Del.</p>
			
			<p><a runat="server" href="~/DocumentDelivery/CancellationReasons.aspx">Reasons for Cancellation</a><br /></p>
			
			<p><a runat="server" href="~/DocumentDelivery/RequestsFinishedAndCancelled.aspx">Requests Finished and Cancelled</a><br />
			This report shows the number of requests finished or cancelled within the given time period. 
			The date range is based off of the date the request was finished or cancelled, not when it was submitted. 
			Those requests cancelled are then broken down by their reason for cancellation. 
			The finished requests include any item that has gone to Delivered to Web, Customer Not Notified, Customer Notified by Phone or Email, Checked Out to Customer or Request Finished. 
			The cancelled requests include any items at either a status of Cancelled by ILL Staff or Cancelled by Customer. 
			All the dates for this report are based off of the current TransactionDate and not from any entries in the Tracking table. The report can show articles, loans or both request types.</p>
</asp:Content>
