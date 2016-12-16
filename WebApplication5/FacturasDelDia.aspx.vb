Public Class FacturasDelDia
    Inherits System.Web.UI.Page

    Private fdbc As FacturaDbContext

    Public its As List(Of Factura)
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        fdbc = New FacturaDbContext()
        its = fdbc.getDelDia()
        Label1.Text = If(its.Count() = 0, "No se encuentran facturas realizadas el día de hoy", "Hay " & its.Count() & "facturas del día de hoy.")
        If (its Is Nothing) Then
            Dim url = "/"
            Response.Redirect(url)
        End If
    End Sub

End Class