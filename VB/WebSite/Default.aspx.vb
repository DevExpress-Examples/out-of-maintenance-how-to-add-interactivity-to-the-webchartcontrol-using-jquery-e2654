Imports Microsoft.VisualBasic
Imports System
Imports System.Collections.Generic
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports DevExpress.XtraCharts

Partial Public Class _Default
	Inherits System.Web.UI.Page
	Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
		If (Not IsPostBack) Then
			UpdateSeries()
		End If
	End Sub

	Protected Sub WebChartControl1_CustomCallback(ByVal sender As Object, ByVal e As DevExpress.XtraCharts.Web.CustomCallbackEventArgs)
		UpdateSeries()
	End Sub

	Private Sub UpdateSeries()
		Dim series As New Series("Series", ViewType.Bar)

		series.ArgumentScaleType = ScaleType.Numerical
		series.ValueScaleType = ScaleType.Numerical

		Dim rnd As New Random()

		For i As Integer = 0 To 3
			series.Points.Add(New SeriesPoint(i, New Double() { Math.Round(rnd.NextDouble(), 1) }))
		Next i

		WebChartControl1.Series.Clear()
		WebChartControl1.Series.Add(series)
	End Sub

End Class
