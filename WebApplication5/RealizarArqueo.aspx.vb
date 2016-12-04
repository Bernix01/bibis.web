Imports System.Security.Claims
Imports System.Security.Principal

Public Class RealizarArqueo
    Inherits Page


    Private ac As Arqueo
    Private adbc As ArqueoDbContext

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        adbc = New ArqueoDbContext()
        If (Request.QueryString("ida") IsNot Nothing) Then
            getArqueo(Request.QueryString("ida"))
        Else
            If (Not (IsPostBack)) Then
                ac = New Arqueo(adbc)
                lbl_num_factura.Text = ac.id
            End If
        End If
    End Sub

    Private Sub getArqueo(v As String)
        Dim arqueo As Arqueo = adbc.GetArqueo(v)
        If (arqueo Is Nothing) Then
            Response.Redirect("/RealizarArqueo")
        End If
        txt_total_efectivo.Text = arqueo.total_efectivo
        txtboxmaster.Text = arqueo.total_mastercard
        txtboxvisa.Text = arqueo.total_visa
        lbl_num_factura.Text = arqueo.id
        txt_total_arqueo.Text = arqueo.total
    End Sub

    Protected Sub bnt_nuevo_arqueo_click(sender As Object, e As ImageClickEventArgs) Handles bnt_nuevo_arqueo.Click
        Response.Redirect("/RealizarArqueo")
    End Sub
    Protected Sub grabarArqueo()
        Dim idfa As Int16 = CType(adbc.arquear(GetCedula(Context.User.Identity), CType(txtboxvisa.Text, Double), CType(txtboxmaster.Text, Double), CType(txt_total_efectivo.Text, Double)), Int16)
        If (idfa <> 0) Then
            alert("Arqueo realizado con éxito.", False)
            Dim url = "/RealizarArqueo" & "?ida=" & idfa
            Response.Redirect(url)
        Else
            alert("El arqueo no coincide.", True)
        End If

    End Sub

    Private Sub alert(msgg As String, danger As Boolean)
        Msg.Text = msgg
        If (danger) Then
            Msg.CssClass = "label label-danger"
        Else
            Msg.CssClass = "label label-info"
        End If
    End Sub


    'obtiene la cédula del vendedor actualmente logeado
    Public Function GetCedula(Identity As IIdentity) As String
        Dim claiim = CType(Identity, ClaimsIdentity).FindFirst("CEDULA")
        ' Test for null to avoid issues during local testing
        Return If(claiim IsNot Nothing, claiim.Value, "")
    End Function

    Protected Sub bnt_generar_arqueo_Click(sender As Object, e As ImageClickEventArgs) Handles bnt_generar_arqueo.Click
        grabarArqueo()
    End Sub
End Class