<%@ Page Language="C#" MasterPageFile="~/WebReports.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebReports.Administrative.Default" Title="ILLiad Reports - Administrative" %>
<asp:Content ID="Content1" ContentPlaceHolderID="BodyPlaceholder" runat="server">
<h2>Administrative Reports</h2>
			
			<p><a runat="server" href="~/Administrative/Copyright.aspx">Copyright</a><br />
			This report shows all requests that have been submitted within the date range and received copyright payment information.
			The report is split into a top section that shows items filled that would need to be paid, a middle section that shows items 
			still outstanding and may need payment and a bottom section of items that were paid through the CCC Gateway order form.</p>
				
			<p><a runat="server" href="~/Administrative/BorrowingInvoicesReceived.aspx">Borrowing Invoices Received</a><br />
			This report lists all of the invoices noted from other lending libraries within the Borrowing module. 
			The date range is based off of the entry date in the Invoices table which is created when the invoice notes are added on the General Update form.</p>

					
			<p><a runat="server" href="~/Administrative/LendingLibrary.aspx">Lending Library</a><br />
			This report shows all borrowing requests that were submitted by customers within the date range and their current status. 
			The only requests displayed are those with a lending string that contain the text typed in the Lending String field of the into web page to this report. 
			This allows you to see where that library is being placed in lending strings and how often they're filling requests successfully.</p>
					
			<p><a runat="server" href="~/Administrative/CustomersCleared.aspx">Customers Cleared</a><br />
			This report lists each user who has a "last changed date" within the date range given. 
			The last changed date is updated any time a customer registers or edits their information via the web, but not when staff save changes to a customer through the client.</p>
					
			<p><a runat="server" href="~/Administrative/OutstandingRequests.aspx">Outstanding Requests</a><br />
			This report lists all borrowing requests that are at a status of Request Sent for more than X days. 
			This allows you to check on the status of those requests to make sure they are still in process at a lending library.</p>

				
			<p><a runat="server" href="~/Administrative/RequestsByUsername.aspx">Requests by Username</a><br />
			This report lists all borrowing requests submited by customers within the date range given, grouped by username and the articles and/or loans received. 
			This only counts requests submitted by customers and does not differentiate between those filled or cancelled.</p>
			
			<p><a runat="server" href="~/Administrative/StaffActivityByUsername.aspx">Staff Activity by Username</a><br /></p>
</asp:Content>
