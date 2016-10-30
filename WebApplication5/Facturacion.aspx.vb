
Imports System.Data.Entity
Imports System.Security.Claims
Imports System.Security.Principal

Public Class Facturacion
    Inherits Page
    Private fdbc As FacturaDbContext
    Private ita As IList(Of Item)
    Public ciudades As IList(Of Ciudad)
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        fdbc = New FacturaDbContext
        ita = New List(Of Item)
        ita.Add(New Item)
        ItemList.DataSource = ita
        ItemList.DataBind()
    End Sub
    Public Function GetCedula(Identity As IIdentity) As String
        Dim claiim = CType(Identity, ClaimsIdentity).FindFirst("CEDULA")
        ' Test for null to avoid issues during local testing
        Return If(claiim IsNot Nothing, claiim.Value, "")
    End Function

    Private Sub btn_buscar_cliente_Click(sender As Object, e As ImageClickEventArgs) Handles btn_buscar_cliente.Click
        Dim clientes = fdbc.GetCliente(txt_ruc.Text)
        If (clientes.Length = 0) Then
            Return
        End If
        Dim cliente = clientes(0)
        Console.WriteLine(cliente.ruc)
        txt_cliente.Text = cliente.nombre + cliente.apellido
        txt_cliente.ReadOnly = True
        txt_direccion.Text = cliente.direccion
        txt_direccion.ReadOnly = True
        txt_ciudad.Text = cliente.ciudad
        txt_direccion.ReadOnly = True
        txt_telefono.Text = cliente.telefono
        txt_telefono.ReadOnly = True
        txt_correo.Text = cliente.email
        txt_correo.ReadOnly = True
    End Sub

    Private Sub btn_agregar_detalle_Click(sender As Object, e As ImageClickEventArgs) Handles btn_agregar_detalle.Click
        ita.Add(New Item)
        ItemList.DataBind()
    End Sub
End Class