<%@ Page Language="C#" MasterPageFile="~/WebReports.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebReports.Borrowing.Default" Title="ILLiad Reports - Borrowing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="BodyPlaceholder" runat="server">
<h2>Borrowing Reports</h2>
			<p><a runat="server" href="~/Borrowing/FillRateStatistics.aspx">Fill Rate Statistics</a><br />
			This report lists all items received within the selected date range and their current status. Depending on the date range, items may still be in process until they are cancelled or completed.</p>
				
			<p><a runat="server" href="~/Borrowing/MostRequestedJournals.aspx">Most Requested Journals</a><br />
			This report lists the distinct journal title (in addition to the OCLC number or ISSN) and the number of requests that were submitted 
			within the selected date range and are currently at a status of either Delivered to Web or Request Finished. This report only shows journals that are successfully filled.</p>
				
			<p><a runat="server" href="~/Borrowing/MostRequestedLoans.aspx">Most Requested Loans</a><br />
			This report lists the distinct loan title and the number of requests that were submitted withing the selected date range and are currently 
			at a transaction status of either Checked Out to Customer or Request Finished. So this report only shows monographs that are successfully filled.</p>
				
			<p><a runat="server" href="~/Borrowing/RegisteredUsersByDepartment.aspx">Registered Users by Department</a><br />
			This report lists each department and the number of users at each status registered. 
			This report can either include or exclude disavowed customers. If a user has a a blank department or status, that user will not be included in the report.</p>
				
			<p><a runat="server" href="~/Borrowing/RequestsReceivedByDay.aspx">Requests Received by Day</a><br />
			This report shows the number of requests received each day of the given time period. 
			There is an option to choose requests that are submitted and then resubmitted again as a single request or two separate requests.</p>
				
			<p><a runat="server" href="~/Borrowing/RequestsSentByDay.aspx">Requests Sent by Day</a><br />
			This report shows the number of requests processed and sent for fulfillment each day of the given time period. 
			The date range is based off of the date that the request is sent. There is an option to count requests that are sent out multiple times as one request or separate requests.</p>
				
			<p><a runat="server" href="~/Borrowing/RequestsSentByHour.aspx">Requests Sent by Hour</a><br />
			This report shows the number of requests processed and sent for fulfillment each hour of the given date. 
			There is an option to count requests that are sent out multiple times as one request or separate requests.</p>
				
			<p><a runat="server" href="~/Borrowing/RequestsByDepartment.aspx">Requests by Department</a><br />
			This report shows a list of departments and the number of articles and loans that have been requested by customers within the given time period, 
			regardless of their current status (cancelled or filled). Requests for users with blank departments are excluded from the list.</p>

			<p><a runat="server" href="~/Borrowing/RequestsByDepartmentAndUserStatus.aspx">Requests by Department and User Status</a><br />
			This report shows a list of departments and the number of requests received by each user status within the given time period, 
			regardless of their current status (cancelled or filled). Requests for users with blank departments are excluded from the list.</p>
				
			<p><a runat="server" href="~/Borrowing/RequestsFinished.aspx">Requests Finished</a><br />
			This report shows the number of requests finished within the given time period. 	
			The date range is based off of the date the request was finished, not when it was submitted. 
			The finished requests include any item that has gone to Delivered to Web, Checked Out to Customer, or Request Finished.</p>
				
			<p><a runat="server" href="~/Borrowing/RequestsFinishedAndCancelled.aspx">Requests Finished and Cancelled</a><br />
			This report shows the number of requests finished or cancelled within the given time period. 
			The date range is based off of the date the request was finished or cancelled, not when it was submitted. 
			Those requests cancelled are then broken down by their reason for cancellation. 
			The finished requests include any item that has gone to Delivered to Web, Customer Not Notified, Customer Notified by Phone or Email, Checked Out to Customer or Request Finished. 
			The cancelled requests include any items at either a status of Cancelled by ILL Staff or Cancelled by Customer. 
			All the dates for this report are based off of the current TransactionDate and not from any entries in the Tracking table. The report can show articles, loans or both request types.</p>
				
			<p><a runat="server" href="~/Borrowing/TurnaroundTime.aspx">Turnaround Time</a><br />
			This report shows the average time difference for articles, loans, both request types and any manually processed articles. 
			The date range selected is based off of date and time the request reached its final status (Delivered to Web, Request Finished, Checked Out to Customer, etc.) 
			and not the date it was submitted (which may be before that date range selection).</p>
				
			<p><a runat="server" href="~/Borrowing/ElecDelTurnaroundTime.aspx">Electronic Delivery Turnaround Time</a><br />
			This report is very similar to the Turnaround Time report except that it only shows those articles that were delivered electronically. 
			The date range selected is based off of date and time the request reached Delivered to Web and not the date it was submitted (which may be before that date range selection).</p>
				
			<p><a runat="server" href="~/Borrowing/DeliveryTimeDistribution.aspx">Delivery Time Distribution</a><br />
			This report shows the number of requests filled X days after being submitted by a customer for any given month and year. 
			The report only shows transactions that are filled within 31 days of the date submitted and the date submitted is within the month and year parameter chosen.</p>
				
			<p><a runat="server" href="~/Borrowing/WhoWeBorrowFrom.aspx">Who We Borrow From</a><br />
			This report lists the library symbol and name of institutions who have filled more than X number of requests (where you can choose the value of X). 
			The date range selected notes the date that the request was submitted and not necessarily the date range where the request was filled. 
			Items are counted as filled if they have a current transaction status of Request Finished, Checked Out to Customer, Delivered to Web, or Customer Notified.</p>
				
			<p><a runat="server" href="~/Borrowing/JournalsReceived.aspx">Journals Received</a><br />
			This report lists journal titles and years where more than X number of that title and year have been filled (where you can choose the value of X). 
			The date range selected notes the date that the request was submitted and not necessarily the date range where the request was filled.</p>
			
			<p><a runat="server" href="~/Borrowing/WorldCatInformation.aspx">WorldCat Information</a><br /></p>
</asp:Content>
