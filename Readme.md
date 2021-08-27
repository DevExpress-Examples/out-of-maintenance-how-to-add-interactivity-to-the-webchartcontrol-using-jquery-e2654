<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128572561/13.1.4%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E2654)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))
<!-- default file list end -->
# How to add interactivity to the WebChartControl using jQuery
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/e2654/)**
<!-- run online end -->


<p>The XtraCharts Suite provides a rich client-side API (see the <a href="http://documentation.devexpress.com/#XtraCharts/clsDevExpressXtraChartsWebScriptsASPxClientWebChartControltopic"><u>ASPxClientWebChartControl Class</u></a>) out of the box. However, it focuses on the chart itself. If you want to move or animate a chart within its container (i. e. parent element), you should accomplish this manually. jQuery can simplify this task as much as possible.</p><p>jQuery is a JavaScript Library that simplifies HTML document traversing, event handling, animating, and Ajax interactions for rapid web development.</p><p>The simplest method to access the chart from jQuery methods is to place it in a auxiliary HTML element (e. g. DIV) and use its identifier (id attribute) in jQuery methods. However, in some cases you might need to access the immediate chart element. Please use the <a href="http://documentation.devexpress.com/#XtraCharts/DevExpressXtraChartsWebScriptsASPxClientWebChartControl_GetMainDOMElementtopic"><u>ASPxClientWebChartControl.GetMainDOMElement Method</u></a> for this purpose. Both approaches are demonstrated in this example.</p>

<br/>


