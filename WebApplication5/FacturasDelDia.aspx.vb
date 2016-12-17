Public Class FacturasDelDia
    Inherits System.Web.UI.Page

    Private fdbc As FacturaDbContext

    Public its As List(Of Factura)
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        fdbc = New FacturaDbContext()
        its = fdbc.getDelDia()
        If (its Is Nothing) Then
            Dim url = "/"
            Response.Redirect(url)
        End If
        Label1.Text = If(its.Count() = 0, "No se encuentran facturas realizadas el día de hoy", "Hay " & its.Count() & " factura" & If(its.Count() > 1, "s", "") & " el día de hoy.")
        facs.DataSource = its
        facs.DataBind()
    End Sub

End Class