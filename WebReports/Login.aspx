<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebReports.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>ILLiad Reports</title>
    <link rel="stylesheet" type="text/css" href="css/1col.css" media="screen" />
    <link rel="stylesheet" type="text/css" href="css/main.css" media="screen" />
<link rel="stylesheet" type="text/css" href="css/illiad.css" media="screen" />
    <link rel="stylesheet" type="text/css" href="css/print.css" media="print" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <!--[if lte IE 6]>
    <link rel="stylesheet" type="text/css" href="css/ie6_or_less.css" />
    <![endif]-->
    <style type="text/css">
        .style1
        {
            height: 18px;
        }
        .style2
        {
            width: 14em;
            height: 18px;
        }
    </style>
    </head>
<body>
<div id="pageMargins">
    <form id="form1" runat="server">
        <div id="page" class="pageContainer">
            
                <!-- Page Header -->
                <div id="header" class="pageContainerHeader">
                    <!-- Do NOT change where LEFT, RIGHT & TEXT is located within the page due to float positions -->
                    <div class="pageContainerHeaderLeft">&nbsp;</div>
                    <div class="pageContainerHeaderRight">&nbsp;</div>
                    <div class="pageContainerHeaderText">
                            <h2>ILLiad Reports</h2>
                    </div>                    
                </div>
                <!-- end header -->
                
                <div id="pageContent" class="pageContainerContent">
                    <div id="main">
                        <div id="mainContent">                                                       
                            <div class="LoginContent" style="left: 5%; top: 0px">
                                <asp:Login ID="Login1" runat="server" TitleText="Log In To ILLiad Reports" CssClass="LoginControl" BorderPadding="0" BorderStyle="None" OnAuthenticate="Login1_Authenticate" DestinationPageUrl="~/Default.aspx" OnLoggedIn="Login1_LoggedIn" RememberMeText="" DisplayRememberMe="False">
                                    <TitleTextStyle CssClass="LoginControlTitle" />
                                    <CheckBoxStyle Wrap="True" />
                                    <TextBoxStyle Width="140px" />
                                    <LoginButtonStyle CssClass="LoginControlButton" />
                                    <LayoutTemplate>
                                        <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse; margin: auto;">
                                            <tr>
                                                <td align="center">
                                                    <table border="0" cellpadding="0" align="left">
                                                        <tr>
                                                            <td align="center" class="LoginControlTitle" colspan="3">
                                                                Log In To ILLiad Reports</td>
                                                        </tr>
                                                        <tr>
                                                            <td align="center" style="color: red;" colspan="3" dir="ltr">
                                                                &nbsp;<asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>&nbsp;
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="center" colspan="3" dir="ltr" style="color: red;">
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td align="left" class="LoginControlInputCells" width="15em">
                                                                &nbsp;</td>
                                                            <td align="left" class="LoginControlInputCells">
                                                                <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User 
                                                                Name:</asp:Label>
                                                                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                                                                    ControlToValidate="UserName" ErrorMessage="User Name is required." 
                                                                    ToolTip="User Name is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                                            </td>
                                                            <td align="left" class="LoginControlInputCells" width="15em">
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td align="left">
                                                                &nbsp;</td>
                                                            <td align="left" class="LoginControlInputCells">
                                                                <asp:TextBox ID="UserName" runat="server" CssClass="LoginControlInputBox"></asp:TextBox>
                                                            </td>
                                                            <td align="left">
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td align="left">
                                                                </td>
                                                            <td align="left">
                                                                </td>
                                                            <td align="left">
                                                                </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="left">
                                                                </td>
                                                            <td align="left">
                                                                <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                                                                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" 
                                                                    ControlToValidate="Password" ErrorMessage="Password is required." 
                                                                    ToolTip="Password is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                                            </td>
                                                            <td align="left">
                                                                </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="left">
                                                                &nbsp;</td>
                                                            <td align="left" class="LoginControlInputCells">
                                                                <asp:TextBox ID="Password" runat="server" CssClass="LoginControlInputBox" 
                                                                    TextMode="Password"></asp:TextBox>
                                                            </td>
                                                            <td align="left">
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td align="center">
                                                                &nbsp;</td>
                                                            <td align="center">
                                                                <asp:Button ID="LoginButton" runat="server" CommandName="Login" 
                                                                    CssClass="LoginControlButton" Text="Log In" ValidationGroup="Login1" />
                                                            </td>
                                                            <td align="center">
                                                                &nbsp;</td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                    </LayoutTemplate>
                                </asp:Login>            
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Page Footer -->
                <div id="footer">              
                    <div id="copyright">
                        Copyright &copy; 2011 <a href="http://www.atlas-sys.com">Atlas Systems, Inc.</a> All Rights Reserved. 
                    </div><!-- end copyright -->
                </div><!-- end footer -->   

        </div>
    </form>
</div>
</body>
</html>
