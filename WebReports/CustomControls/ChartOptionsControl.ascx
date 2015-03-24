<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ChartOptionsControl.ascx.cs" Inherits="WebReports.CustomControls.ChartOptionsControl" %>
<%@ Register Assembly="DevExpress.Web.ASPxEditors.v11.2, Version=11.2.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dxe" %>
<div id="ChartOptionsDiv">
<asp:Panel ID="ChartOptionsPanel3DPieChart" runat="server" CssClass="ChartOptionsPanel"
    Visible="False">
<table class="ChartOptionsTable" id="OptionsTable3DPieChart">
    <tr>
        <td class="ChartOptionsHeader">
            3D Pie Chart Options &nbsp;&nbsp;
            <asp:LinkButton ID="ChangeToDoughnutLinkButton" runat="server" Font-Size="Smaller"
                OnClick="ChangeToDoughnutLinkButton_Click">( Change to Doughnut Chart )</asp:LinkButton></td>
    </tr>
    <tr>
        <td class="ChartOptionsBody" colspan="1"><TABLE style="WIDTH: 100%"><TBODY><TR><TD vAlign=middle><dxe:ASPxCheckBox runat="server" Text="Show Labels" Checked="True" ID="Pie3DCheckEditShowLabel" AutoPostBack="True" OnCheckedChanged="Pie3DCheckEditShowLabel_CheckedChanged"></dxe:ASPxCheckBox>
 </TD>
    <td align="right" valign="middle">
    </td>
    <TD vAlign=middle align=right style="width: 111px">
     &nbsp;&nbsp;<BR /><BR />
 </TD>
    <td align="right" valign="middle">
        <dxe:ASPxLabel runat="server" ID="Pie3DLabelLabelPosition" Text="Label Position:"></dxe:ASPxLabel>
    </td>
    <TD style="WIDTH: 110px;" vAlign=middle align=right>
 <asp:DropDownList runat="server" Width="8em" ID="Pie3DDropDownLabelPosition" AutoPostBack="True" OnSelectedIndexChanged="Pie3DDropDownLabelPosition_SelectedIndexChanged"><asp:ListItem Value="Inside"></asp:ListItem>
<asp:ListItem Selected="True" Value="Outside"></asp:ListItem>
<asp:ListItem Value="TwoColumns"></asp:ListItem>
            </asp:DropDownList>
 </TD></TR>
    <tr>
        <td style="height: 49px;" valign="middle">
            <dxe:ASPxCheckBox runat="server" Text="Show as Percentage" Checked="True" ID="CheckEditValuePercent" OnCheckedChanged="CheckEditValuePercent_CheckedChanged" AutoPostBack="True"></dxe:ASPxCheckBox>
        </td>
        <td align="right" style="height: 49px;" valign="middle">
            &nbsp;<dxe:ASPxLabel runat="server" ID="Pie3DSeriesLabelExplodePoints" Text="Exploded Points:"></dxe:ASPxLabel>
        </td>
        <td align="right" valign="middle" style="width: 111px; height: 49px;">
 <asp:DropDownList runat="server" Width="8em" ID="Pie3DSeriesDropDownExplodedPoints" AutoPostBack="True" OnSelectedIndexChanged="Pie3DSeriesDropDownExplodedPoints_SelectedIndexChanged"><asp:ListItem Value="None"></asp:ListItem>
<asp:ListItem Value="MinValue">Lowest Value</asp:ListItem>
<asp:ListItem Value="MaxValue">Highest Value</asp:ListItem>
<asp:ListItem Value="All"></asp:ListItem>
            </asp:DropDownList></td>
        <td align="right" style="height: 49px;" valign="middle">
            <dxe:ASPxLabel runat="server" ID="Pie3DSeriesLabelExplodeDist" Text="Explode Distance:"></dxe:ASPxLabel>
        </td>
        <td align="right" style="width: 110px; height: 49px;" valign="middle">
 <asp:DropDownList runat="server" ID="Pie3DSeriesDropDownExplodeDist" AutoPostBack="True" OnSelectedIndexChanged="Pie3DSeriesDropDownExplodeDist_SelectedIndexChanged" Width="8em"><asp:ListItem Value="5">5%</asp:ListItem>
<asp:ListItem Value="10">10%</asp:ListItem>
<asp:ListItem Value="20">20%</asp:ListItem>
<asp:ListItem Value="50">50%</asp:ListItem>
<asp:ListItem Value="75">75%</asp:ListItem>
<asp:ListItem Value="100">100%</asp:ListItem>
            </asp:DropDownList></td>
    </tr>
</TBODY></TABLE>
        </td>
    </tr>
</table>
</asp:Panel><asp:Panel ID="ChartOptionsPanel3DDoughnut" runat="server" CssClass="ChartOptionsPanel"
    Visible="False">
    <table class="ChartOptionsTable" id="Table2">
        <tr>
            <td class="ChartOptionsHeader" style="height: 21px">
                Doughnut Chart Options &nbsp;&nbsp;
                <asp:LinkButton ID="ChangeToPie3DLinkButton" runat="server" Font-Size="Smaller" OnClick="ChangeToPie3DLinkButton_Click">( Change to Pie Chart )</asp:LinkButton></td>
        </tr>
        <tr>
            <td class="ChartOptionsBody" colspan="2">
                <TABLE style="WIDTH: 100%">
                    <TBODY>
                        <TR>
                            <TD vAlign=middle>
                                <dxe:ASPxCheckBox runat="server" Text="Show Labels" Checked="True" ID="DoughnutCheckEditShowLabels" AutoPostBack="True" OnCheckedChanged="DoughnutCheckEditShowLabels_CheckedChanged">
                                </dxe:ASPxCheckBox>
                            </td>
                            <td align="right" style="width: 0px" valign="middle">
                                <br />
                                <br />
                            </td>
                            <td align="right" valign="middle">
                                <dxe:ASPxLabel ID="ASPxLabel6" runat="server" Text="Hole Radius:">
                                </dxe:ASPxLabel>
                            </td>
                            <TD vAlign=middle align=right style="width: 111px">
                                <asp:DropDownList ID="DoughnutChartHoleRadiusDropDownList" runat="server" AutoPostBack="True"
                                    OnSelectedIndexChanged="Doughnut3DSeriesHoleRadiusChanged" Width="8em">
                                    <asp:ListItem Value="60">Default (60%)</asp:ListItem>
                                    <asp:ListItem Value="15">15%</asp:ListItem>
                                    <asp:ListItem Value="30">30%</asp:ListItem>
                                    <asp:ListItem Value="50">50%</asp:ListItem>
                                    <asp:ListItem Value="75">75%</asp:ListItem>
                                    <asp:ListItem Value="90">90%</asp:ListItem>
                                    <asp:ListItem Value="100">100%</asp:ListItem>
                                </asp:DropDownList></td>
                            <td align="right" valign="middle">
                                <dxe:ASPxLabel runat="server" ID="ASPxLabel5" Text="Label Position:">
                                </dxe:ASPxLabel>
                            </td>
                            <TD style="WIDTH: 111px;" vAlign=middle align=right>
                                <asp:DropDownList runat="server" Width="8em" ID="Doughnut3DLabelPositionDropDown" AutoPostBack="True" OnSelectedIndexChanged="Doughnut3DLabelPositionDropDown_SelectedIndexChanged">
                                    <asp:ListItem Value="Inside"></asp:ListItem>
                                    <asp:ListItem Selected="True" Value="Outside"></asp:ListItem>
                                    <asp:ListItem Value="TwoColumns"></asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td valign="middle">
                                <dxe:ASPxCheckBox runat="server" Text="Show as Percentage" Checked="True" ID="DoughnutCheckEditShowPercentage" OnCheckedChanged="DoughnutCheckEditShowPercentage_CheckedChanged" AutoPostBack="True">
                                </dxe:ASPxCheckBox>
                            </td>
                            <td align="right" style="width: 0px;" valign="middle">
                            </td>
                            <td align="right" valign="middle">
                                &nbsp;<dxe:ASPxLabel runat="server" ID="ASPxLabel7" Text="Exploded Points:">
                                </dxe:ASPxLabel>
                            </td>
                            <td align="right" valign="middle" style="width: 111px; height: 49px;">
                                <asp:DropDownList runat="server" Width="8em" ID="Dougnut3DExplodePointsDropDown" AutoPostBack="True" OnSelectedIndexChanged="Dougnut3DExplodePointsDropDown_SelectedIndexChanged">
                                    <asp:ListItem Value="None"></asp:ListItem>
                                    <asp:ListItem Value="MinValue">Lowest Value</asp:ListItem>
                                    <asp:ListItem Value="MaxValue">Highest Value</asp:ListItem>
                                    <asp:ListItem Value="All"></asp:ListItem>
                                </asp:DropDownList></td>
                            <td align="right" valign="middle">
                                <dxe:ASPxLabel runat="server" ID="DoughtnutHoleRadiusLabel" Text="Explode Distance:">
                                </dxe:ASPxLabel>
                            </td>
                            <td align="right" style="width: 111px; height: 49px;" valign="middle">
                                <asp:DropDownList runat="server" ID="Doughnut3DExplodeDistDropDown" AutoPostBack="True" OnSelectedIndexChanged="Doughnut3DExplodeDistDropDown_SelectedIndexChanged" Width="8em">
                                    <asp:ListItem Value="5">5%</asp:ListItem>
                                    <asp:ListItem Value="10">10%</asp:ListItem>
                                    <asp:ListItem Value="20">20%</asp:ListItem>
                                    <asp:ListItem Value="50">50%</asp:ListItem>
                                    <asp:ListItem Value="75">75%</asp:ListItem>
                                    <asp:ListItem Value="100">100%</asp:ListItem>
                                </asp:DropDownList></td>
                        </tr>
                    </tbody>
                </table>
            </td>
        </tr>
    </table>
</asp:Panel>
<asp:Panel ID="ChartOptionsPanelLineGraph" runat="server" CssClass="ChartOptionsPanel"
    Visible="False">
    <table class="ChartOptionsTable" id="OptionsTableLineGraph">
    <tr>
        <td class="ChartOptionsHeader">
            Line Graph Options &nbsp;&nbsp;
            <asp:LinkButton ID="LinkButtonChangeToLine3D" runat="server" Font-Size="Smaller"
                OnClick="LinkButtonChangeToLine3D_Click">( Change to 3D Line Graph )</asp:LinkButton></td>
    </tr>
    <tr>
        <td class="ChartOptionsBody">
            <table style="width: 100%">
                <tr>
                    <td style="width: 184px; height: 45px;" valign="middle">
                        <dxe:ASPxCheckBox runat="server" Text="Show Labels" ID="LineCheckEditShowLabels" AutoPostBack="True" OnCheckedChanged="LineCheckEditShowLabels_CheckedChanged">
                        </dxe:ASPxCheckBox>
                    </td>
                    <td align="center" style="width: 122px; height: 45px;" valign="middle">
                        <dxe:ASPxLabel runat="server" ID="LineSeriesLabelLabelAngle" Text="Label Angle:"></dxe:ASPxLabel>
                    </td>
                    <td align="center" style="width: 65px; height: 45px;" valign="middle">
                        &nbsp;<asp:DropDownList runat="server" ID="LineSeriesDropDownLabelAngle" AutoPostBack="True" OnSelectedIndexChanged="LineSeriesDropDownLabelAngle_SelectedIndexChanged"><asp:ListItem Value="0"></asp:ListItem>
<asp:ListItem Value="45"></asp:ListItem>
<asp:ListItem Value="90"></asp:ListItem>
<asp:ListItem Value="135"></asp:ListItem>
<asp:ListItem Value="180"></asp:ListItem>
<asp:ListItem Value="225"></asp:ListItem>
<asp:ListItem Value="270"></asp:ListItem>
<asp:ListItem Value="315"></asp:ListItem>
</asp:DropDownList>
                    </td>
                    <td align="right" style="width: 160px; height: 45px;" valign="middle">
                        <dxe:ASPxLabel runat="server" ID="LineSeriesLabelMarkerKind" Text="Marker Kind:"></dxe:ASPxLabel>
                    </td>
                    <td align="center" style="width: 152px; height: 45px;" valign="middle">
                        &nbsp;<asp:DropDownList runat="server" ID="LineSeriesDropDownMarkerKind" AutoPostBack="True" OnSelectedIndexChanged="LineSeriesDropDownMarkerKind_SelectedIndexChanged"><asp:ListItem Selected="True" Value="None"></asp:ListItem>
<asp:ListItem Value="Square"></asp:ListItem>
<asp:ListItem Value="Diamond"></asp:ListItem>
<asp:ListItem Value="Triangle"></asp:ListItem>
<asp:ListItem Value="Plus"></asp:ListItem>
<asp:ListItem Value="Cross"></asp:ListItem>
<asp:ListItem Value="Star 3-points">Star 3-points</asp:ListItem>
<asp:ListItem Value="Star 4-points"></asp:ListItem>
<asp:ListItem Value="Star 5-points"></asp:ListItem>
<asp:ListItem Value="Star 6-points"></asp:ListItem>
<asp:ListItem Value="Star 10-points"></asp:ListItem>
<asp:ListItem Value="Pentagon"></asp:ListItem>
<asp:ListItem Value="Hexagon"></asp:ListItem>
</asp:DropDownList>
                    </td>
                    <td align="right" style="width: 170px; height: 45px;" valign="middle">
 <dxe:ASPxLabel runat="server" ID="LineSeriesLabelMarkerSize" Text="Marker Size:"></dxe:ASPxLabel>
                    </td>
                    <td align="right" style="width: 55px; height: 45px;" valign="middle">
 <asp:DropDownList runat="server" ID="LineSeriesDropDownMarkerSize" AutoPostBack="True" 
                            OnSelectedIndexChanged="LineSeriesDropDownMarkerSize_SelectedIndexChanged" 
                            Width="50px"><asp:ListItem Value="8"></asp:ListItem>
<asp:ListItem Value="10"></asp:ListItem>
<asp:ListItem Value="12"></asp:ListItem>
<asp:ListItem Value="14"></asp:ListItem>
<asp:ListItem Value="16"></asp:ListItem>
<asp:ListItem Value="18"></asp:ListItem>
<asp:ListItem Value="20"></asp:ListItem>
<asp:ListItem Value="22"></asp:ListItem>
<asp:ListItem Value="24"></asp:ListItem>
<asp:ListItem Value="26"></asp:ListItem>
<asp:ListItem Value="28"></asp:ListItem>
<asp:ListItem Value="30"></asp:ListItem>
</asp:DropDownList>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</asp:Panel>
<asp:Panel ID="ChartOptionsPanelBarGraph" runat="server" CssClass="ChartOptionsPanel"
    Visible="False">
<table class="ChartOptionsTable" id="OptionsTableBarGraph">
    <tr>
        <td class="ChartOptionsHeader" style="width: 228px">
            Bar Graph Options</td>
    </tr>
    <tr>
        <td class="ChartOptionsBody" style="width: 228px">
            <table style="width: 100%">
                <tr>
                    <td valign="middle" class="ChartOptionsContentsTable" style="width: 50%">
                        <dxe:ASPxCheckBox runat="server" Text="Show Labels" Checked="True" ID="BarCheckEditShowLabels" AutoPostBack="True" OnCheckedChanged="BarCheckEditShowLabels_CheckedChanged">
                        </dxe:ASPxCheckBox>
                    </td>
                    <td align="right" class="ChartOptionsContentsTable" style="width: 33%" valign="middle">
                        <dxe:ASPxLabel runat="server" ID="BarSeriesLabelLabelPosition" Text="Label Position:"></dxe:ASPxLabel>
                    </td>
                    <td align="right" class="ChartOptionsContentsTable" style="width: 7%" valign="middle">
 <dxe:ASPxRadioButton runat="server" Text="Top" Checked="True" ID="BarSeriesLabelPositionTop" OnCheckedChanged="BarSeriesLabelPositionTop_CheckedChanged" AutoPostBack="True" GroupName="BarLabelPosition"></dxe:ASPxRadioButton>
                    </td>
                    <td align="right" valign="middle" class="ChartOptionsContentsTable" style="width: 50%">
 <dxe:ASPxRadioButton runat="server" Text="Center" ID="BarSeriesLabelPositionCenter" OnCheckedChanged="BarSeriesLabelPositionCenter_CheckedChanged" AutoPostBack="True" GroupName="BarLabelPosition"></dxe:ASPxRadioButton>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</asp:Panel>
<asp:Panel ID="ChartOptionsPanel3DLine" runat="server" CssClass="ChartOptionsPanel" Visible="False" Width="125px">
    <table id="OptionsTable3DLine" class="ChartOptionsTable">
        <tr>
            <td class="ChartOptionsHeader" colspan="5">
                3D Line Graph Options &nbsp;&nbsp;
                <asp:LinkButton ID="LinkButtonChangeToLine" runat="server" Font-Size="Smaller" OnClick="LinkButtonChangeToLine_Click">( Change to  2D Line Graph )</asp:LinkButton></td>
        </tr>
        <tr>
            <td style="height: 43px" valign="middle" class="ChartOptionsBody">
                <dxe:ASPxCheckBox runat="server" Text="Show Labels" ID="Line3DCheckEditShowLabels" AutoPostBack="True" OnCheckedChanged="Line3DCheckEditShowLabels_CheckedChanged">
                </dxe:ASPxCheckBox>
            </td>
            <td align="right" style="height: 43px" valign="middle" class="ChartOptionsBody">
                <dxe:ASPxLabel ID="ASPxLabel1" runat="server" Text="Perspective Angle:">
                </dxe:ASPxLabel>
            </td>
            <td align="center" style="width: 69px; height: 43px" valign="middle" class="ChartOptionsBody">
                <asp:DropDownList ID="Line3DAngleDropDown" runat="server" AutoPostBack="True" OnSelectedIndexChanged="Line3DAngleDropDown_SelectedIndexChanged"
                    Width="67px">
                    <asp:ListItem Value="50">Default</asp:ListItem>
                    <asp:ListItem>0</asp:ListItem>
                    <asp:ListItem>30</asp:ListItem>
                    <asp:ListItem>45</asp:ListItem>
                    <asp:ListItem>60</asp:ListItem>
                    <asp:ListItem>90</asp:ListItem>
                    <asp:ListItem>120</asp:ListItem>
                    <asp:ListItem>135</asp:ListItem>
                    <asp:ListItem>150</asp:ListItem>
                </asp:DropDownList></td>
            <td align="right" style="height: 43px" valign="middle" class="ChartOptionsBody">
                <dxe:ASPxLabel ID="ASPxLabel2" runat="server" Text="Zoom Percent:">
                </dxe:ASPxLabel>
            </td>
            <td align="right" style="width: 52px; height: 43px" valign="middle" class="ChartOptionsBody">
                <asp:DropDownList ID="Line3DZoomDropDown" runat="server" AutoPostBack="True" OnSelectedIndexChanged="Line3DZoomDropDown_SelectedIndexChanged">
                    <asp:ListItem>50</asp:ListItem>
                    <asp:ListItem>75</asp:ListItem>
                    <asp:ListItem>100</asp:ListItem>
                    <asp:ListItem>120</asp:ListItem>
                    <asp:ListItem Selected="True">140</asp:ListItem>
                    <asp:ListItem>170</asp:ListItem>
                    <asp:ListItem>200</asp:ListItem>
                    <asp:ListItem>250</asp:ListItem>
                    <asp:ListItem>300</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
    </table>
</asp:Panel>
<asp:Panel ID="ChartOptionsPanel3DStackedArea" runat="server" CssClass="ChartOptionsPanel" Visible="False" Width="5px">
    <table id="Table1" class="ChartOptionsTable">
        <tr>
            <td class="ChartOptionsHeader" colspan="7">
                3D Stacked Area Graph Options &nbsp;&nbsp;
                <asp:LinkButton ID="LinkButtonChangeToStackedArea" runat="server" Font-Size="Smaller"
                    OnClick="LinkButtonChangeToStackedArea_Click">( Change to 2D Stacked Area Graph )</asp:LinkButton></td>
        </tr>
        <tr>
            <td style="height: 43px" valign="middle" class="ChartOptionsBody">
                <dxe:ASPxCheckBox runat="server" Text="Show Labels" ID="StackedArea3DShowLabels" AutoPostBack="True" OnCheckedChanged="StackedArea3DCheckEditShowLabels_CheckedChanged">
                </dxe:ASPxCheckBox>
            </td>
            <td align="right" class="ChartOptionsBody" style="height: 43px" valign="middle">
                Transparency:</td>
            <td align="right" class="ChartOptionsBody" style="height: 43px" valign="middle">
                <asp:DropDownList ID="StackedArea3DTransparencyDropDown" runat="server" AutoPostBack="True"
                    OnSelectedIndexChanged="StackedArea3DTransparencyDropDown_SelectedIndexChanged">
                    <asp:ListItem>0</asp:ListItem>
                    <asp:ListItem>45</asp:ListItem>
                    <asp:ListItem Value="90">90</asp:ListItem>
                    <asp:ListItem Selected="True">135</asp:ListItem>
                    <asp:ListItem>180</asp:ListItem>
                    <asp:ListItem>225</asp:ListItem>
                    <asp:ListItem>240</asp:ListItem>
                    <asp:ListItem>255</asp:ListItem>
                </asp:DropDownList></td>
            <td align="right" style="height: 43px" valign="middle" class="ChartOptionsBody">
                <dxe:ASPxLabel ID="ASPxLabel3" runat="server" Text="Perspective Angle:">
                </dxe:ASPxLabel>
            </td>
            <td align="center" style="height: 43px" valign="middle" class="ChartOptionsBody">
                <asp:DropDownList ID="StackedArea3DPerspectiveDropDown" runat="server" AutoPostBack="True" OnSelectedIndexChanged="StackedArea3DAngleDropDown_SelectedIndexChanged"
                    Width="67px">
                    <asp:ListItem Value="50">Default</asp:ListItem>
                    <asp:ListItem>0</asp:ListItem>
                    <asp:ListItem>30</asp:ListItem>
                    <asp:ListItem>45</asp:ListItem>
                    <asp:ListItem>60</asp:ListItem>
                    <asp:ListItem>90</asp:ListItem>
                    <asp:ListItem>120</asp:ListItem>
                    <asp:ListItem>135</asp:ListItem>
                    <asp:ListItem>150</asp:ListItem>
                </asp:DropDownList></td>
            <td align="right" style="height: 43px" valign="middle" class="ChartOptionsBody">
                <dxe:ASPxLabel ID="ASPxLabel4" runat="server" Text="Zoom Percent:">
                </dxe:ASPxLabel>
            </td>
            <td align="right" style="height: 43px" valign="middle" class="ChartOptionsBody">
                <asp:DropDownList ID="StackedArea3DZoomDropDown" runat="server" AutoPostBack="True" OnSelectedIndexChanged="StackedArea3DZoomDropDown_SelectedIndexChanged">
                    <asp:ListItem>50</asp:ListItem>
                    <asp:ListItem>75</asp:ListItem>
                    <asp:ListItem>100</asp:ListItem>
                    <asp:ListItem>120</asp:ListItem>
                    <asp:ListItem>140</asp:ListItem>
                    <asp:ListItem Selected="True">170</asp:ListItem>
                    <asp:ListItem>200</asp:ListItem>
                    <asp:ListItem>250</asp:ListItem>
                    <asp:ListItem>300</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
    </table>
</asp:Panel><asp:Panel ID="ChartOptionsPanel3DStackedbar" runat="server" CssClass="ChartOptionsPanel" Visible="False" Width="5px">
    <table id="Table3" class="ChartOptionsTable">
        <tr>
            <td class="ChartOptionsHeader" colspan="7">
                3D Stacked Bar Graph Options &nbsp;&nbsp;
                <asp:LinkButton ID="LinkButtonChangeTo2DStackedBar" runat="server" Font-Size="Smaller"
                    OnClick="LinkButtonChangeTo2DStackedBar_Click">( Change to 2D Stacked Bar Graph )</asp:LinkButton></td>
        </tr>
        <tr>
            <td style="height: 43px" valign="middle" class="ChartOptionsBody">
                <dxe:ASPxCheckBox runat="server" Text="Show Labels" ID="StackedBar3DASPxCheckBoxShowLabels" AutoPostBack="True" OnCheckedChanged="StackedBar3DASPxCheckBoxShowLabels_CheckedChanged">
                </dxe:ASPxCheckBox>
            </td>
            <td align="right" class="ChartOptionsBody" style="height: 43px" valign="middle">
                Transparency:</td>
            <td align="right" class="ChartOptionsBody" style="height: 43px" valign="middle">
                <asp:DropDownList ID="StackedBar3DDropDownListTransparency" runat="server" AutoPostBack="True"
                    OnSelectedIndexChanged="StackedBar3DDropDownListTransparency_SelectedIndexChanged">
                    <asp:ListItem>0</asp:ListItem>
                    <asp:ListItem>45</asp:ListItem>
                    <asp:ListItem Value="90">90</asp:ListItem>
                    <asp:ListItem Selected="True">135</asp:ListItem>
                    <asp:ListItem>180</asp:ListItem>
                    <asp:ListItem>225</asp:ListItem>
                    <asp:ListItem>240</asp:ListItem>
                    <asp:ListItem>255</asp:ListItem>
                </asp:DropDownList></td>
            <td align="right" style="height: 43px" valign="middle" class="ChartOptionsBody">
                <dxe:ASPxLabel ID="ASPxLabel8" runat="server" Text="Perspective Angle:">
                </dxe:ASPxLabel>
            </td>
            <td align="center" style="height: 43px" valign="middle" class="ChartOptionsBody">
                <asp:DropDownList ID="StackedBar3DDropDownListAngle" runat="server" AutoPostBack="True" OnSelectedIndexChanged="StackedBar3DDropDownListAngle_SelectedIndexChanged"
                    Width="67px">
                    <asp:ListItem Value="50">Default</asp:ListItem>
                    <asp:ListItem>0</asp:ListItem>
                    <asp:ListItem>30</asp:ListItem>
                    <asp:ListItem>45</asp:ListItem>
                    <asp:ListItem>60</asp:ListItem>
                    <asp:ListItem>90</asp:ListItem>
                    <asp:ListItem>120</asp:ListItem>
                    <asp:ListItem>135</asp:ListItem>
                    <asp:ListItem>150</asp:ListItem>
                </asp:DropDownList></td>
            <td align="right" style="height: 43px" valign="middle" class="ChartOptionsBody">
                <dxe:ASPxLabel ID="ASPxLabel9" runat="server" Text="Zoom Percent:">
                </dxe:ASPxLabel>
            </td>
            <td align="right" style="height: 43px" valign="middle" class="ChartOptionsBody">
                <asp:DropDownList ID="StackedBar3DDropDownListZoom" runat="server" AutoPostBack="True" OnSelectedIndexChanged="StackedBar3DDropDownListZoom_SelectedIndexChanged">
                    <asp:ListItem>50</asp:ListItem>
                    <asp:ListItem>75</asp:ListItem>
                    <asp:ListItem>100</asp:ListItem>
                    <asp:ListItem>120</asp:ListItem>
                    <asp:ListItem>140</asp:ListItem>
                    <asp:ListItem Selected="True">170</asp:ListItem>
                    <asp:ListItem>200</asp:ListItem>
                    <asp:ListItem>250</asp:ListItem>
                    <asp:ListItem>300</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
    </table>
</asp:Panel>
<asp:Panel ID="ChartOptionsPanelStackedbar" runat="server" CssClass="ChartOptionsPanel"
    Visible="False" Width="384px">
    <table class="ChartOptionsTable" id="Table4">
        <tr>
            <td class="ChartOptionsHeader" style="height: 2px;">
                Stacked Bar Graph Options &nbsp;&nbsp;
                <asp:LinkButton ID="LinkButtonChangeTo3DStackedBar" runat="server" Font-Size="Smaller"
                    OnClick="LinkButtonChangeTo3DStackedBar_Click">( Change to 3D Stacked Bar Graph )</asp:LinkButton></td>
        </tr>
        <tr>
            <td class="ChartOptionsBody">
                <table style="width: 100%">
                    <tr>
                        <td valign="middle" class="ChartOptionsContentsTable" style="width: 50%">
                            <dxe:ASPxCheckBox runat="server" Text="Show Labels" Checked="True" ID="StackedBarASPxCheckBoxShowLabels" AutoPostBack="True" OnCheckedChanged="StackedBarASPxCheckBoxShowLabels_CheckedChanged">
                            </dxe:ASPxCheckBox>
                        </td>
                        <td align="right" class="ChartOptionsContentsTable" style="width: 33%" valign="middle">
                            &nbsp;</td>
                        <td align="right" class="ChartOptionsContentsTable" style="width: 7%" valign="middle">
                            &nbsp;</td>
                        <td align="right" valign="middle" class="ChartOptionsContentsTable" style="width: 50%">
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Panel>
<asp:Panel ID="ChartOptionsPanelStackedArea" runat="server" CssClass="ChartOptionsPanel"
    Visible="False" Width="401px">
    <table class="ChartOptionsTable" id="Table5">
        <tr>
            <td class="ChartOptionsHeader">
                Stacked Area Graph Options &nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton1" runat="server" Font-Size="Smaller" OnClick="LinkButtonChangeTo3DStackedArea_Click">( Change to 3D Stacked Area Graph )</asp:LinkButton></td>
        </tr>
        <tr>
            <td class="ChartOptionsBody">
                <table style="width: 100%">
                    <tr>
                        <td valign="middle" class="ChartOptionsContentsTable" style="width: 50%; height: 41px;">
                            <dxe:ASPxCheckBox runat="server" Text="Show Labels" Checked="True" ID="StackedAreaASPxCheckBoxShowLabels" AutoPostBack="True" OnCheckedChanged="StackedAreaASPxCheckBoxShowLabels_CheckedChanged">
                            </dxe:ASPxCheckBox>
                        </td>
                        <td align="right" class="ChartOptionsContentsTable" style="width: 33%; height: 41px;" valign="middle">
                            &nbsp;</td>
                        <td align="right" class="ChartOptionsContentsTable" style="width: 7%; height: 41px;" valign="middle">
                            &nbsp;</td>
                        <td align="right" valign="middle" class="ChartOptionsContentsTable" style="width: 50%; height: 41px;">
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Panel>
</div>
