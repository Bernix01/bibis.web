Public Class FacturasDelDia
    Inherits System.Web.UI.Page

    Private fdbc As FacturaDbContext

    Public its As List(Of Factura)
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        fdbc = New FacturaDbContext()
        If (Not (IsPostBack)) Then
            its = fdbc.getDelDia()
            Label1.Text = If(its.Count() = 0, "No se encuentran facturas realizadas el día de hoy", "Hay " & its.Count() & " factura" & If(its.Count() > 1, "s", "") & " el día de hoy.")
            facs.DataSource = its
            facs.DataBind()

            Dim t = its.Sum(Function(item)
                                Return If(item.estado = 0, item.total, 0)
                            End Function)
            res.Text = "$" & t
        End If
    End Sub

    Protected Sub buscar_Click(sender As Object, e As EventArgs) Handles buscar.Click
        Dim i = Request.Form(finicio.UniqueID)
        Dim f = Request.Form(ffin.UniqueID)
        If (i.Equals("") Or f.Equals("")) Then
            Return
        End If
        its = fdbc.getInRange(i, f)
        Label1.Text = If(its.Count() = 0, "No se encuentran facturas realizadas" & " entre " & i & " y " & f & " .", "Hay " & its.Count() & " factura" & If(its.Count() > 1, "s", "") & " entre " & i & " y " & f & " .")
        facs.DataSource = its
        facs.DataBind()
        Dim t = its.Sum(Function(item)
                            Return If(item.estado = 0, item.total, 0)
                        End Function)
        res.Text = "$" & t
    End Sub
End Class