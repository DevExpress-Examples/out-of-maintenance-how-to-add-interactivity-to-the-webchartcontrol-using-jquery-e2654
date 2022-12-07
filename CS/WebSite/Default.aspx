<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.XtraCharts.v15.1.Web, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.XtraCharts.Web" TagPrefix="dxchartsui" %>
<%@ Register Assembly="DevExpress.XtraCharts.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.XtraCharts" TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <script type="text/javascript" language="javascript" src="http://ajax.microsoft.com/ajax/jquery/jquery-1.4.2.js"></script>

    <script type="text/javascript" language="javascript">
        $(document).ready(function() {
            $('#chartContainer').fadeIn('slow');

            $(chart.GetMainDOMElement()).click(function(event) {
                if (!$(this).is(":hidden")) {
                    $($(this)).hide('slow', function() { $('#imgChartIconContainer').show(); });
                }
            });

            $('#imgChartIcon').click(function(event) {
                var chartElement = chart.GetMainDOMElement();

                if ($(chartElement).is(":hidden")) {
                    $('#imgChartIconContainer').hide();
                    $(chartElement).show('slow');
                }
            });

            $("#btnLeft").click(function() {
                $("#chartContainer").animate({ "left": "-=50px" }, "slow");
            });

            $("#btnRight").click(function() {
                $("#chartContainer").animate({ "left": "+=50px" }, "slow");
            });

            $("#btnTop").click(function() {
                $("#chartContainer").animate({ "top": "-=50px" }, "slow");
            });

            $("#btnBottom").click(function() {
                $("#chartContainer").animate({ "top": "+=50px" }, "slow");
            });

        })
    </script>

</head>
<body>
    <form id="form1" runat="server">
    
    <asp:Button ID="btnUpdate" runat="server" Text="Update Chart" 
        OnClientClick="chart.PerformCallback('Update'); return false;"/>
    
    <div id="chartContainer" style="display: none; position: absolute; left: 100px; top: 100px;">
        <table border="0">
            <tr>
                <td>
                </td>
                <td align="center">
                    <asp:Image ID="btnTop" runat="server" ImageUrl="~/Images/top.bmp" />
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Image ID="btnLeft" runat="server" ImageUrl="~/Images/left.bmp" />
                </td>
                <td>
                    <div id="imgChartIconContainer" style="display: none;">
                        <asp:Image ID="imgChartIcon" runat="server" ImageUrl="~/Images/chart.bmp" ToolTip="Click to expand." />
                    </div>
                    <dxchartsui:WebChartControl ID="WebChartControl1" runat="server" Height="260px" Width="532px" ToolTip="Click to collapse."
                        ClientInstanceName="chart" EnableViewState="false" SaveStateOnCallbacks="false" oncustomcallback="WebChartControl1_CustomCallback">
                    </dxchartsui:WebChartControl>
                </td>
                <td>
                    <asp:Image ID="btnRight" runat="server" ImageUrl="~/Images/right.bmp" />
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td align="center">
                    <asp:Image ID="btnBottom" runat="server" ImageUrl="~/Images/bottom.bmp" />
                </td>
                <td>
                </td>
            </tr>
        </table>
    </div>
    
    </form>
</body>
</html>
