using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.XtraCharts;

public partial class _Default : System.Web.UI.Page {
    protected void Page_Load(object sender, EventArgs e) {
        if(!IsPostBack)
            UpdateSeries();
    }

    protected void WebChartControl1_CustomCallback(object sender, DevExpress.XtraCharts.Web.CustomCallbackEventArgs e) {
        UpdateSeries();
    }

    private void UpdateSeries() {
        Series series = new Series("Series", ViewType.Bar);

        series.ArgumentScaleType = ScaleType.Numerical;
        series.ValueScaleType = ScaleType.Numerical;

        Random rnd = new Random();

        for(int i = 0; i < 4; i++) {
            series.Points.Add(new SeriesPoint(i, new double[] { Math.Round(rnd.NextDouble(), 1) }));
        }

        WebChartControl1.Series.Clear();
        WebChartControl1.Series.Add(series);
    }

}
