
Imports System.Data.Entity
Imports System.Security.Claims
Imports System.Security.Principal

Public Class Facturacion
    Inherits Page
    Private fdbc As FacturaDbContext
    Private ita As List(Of Item)
    Public ciudades As IList(Of Ciudad)
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        fdbc = New FacturaDbContext
        If (Me.ViewState("ita") IsNot Nothing) Then
            ita = CType(Me.ViewState("ita"), List(Of Item))
            ItemList.DataSource = ita
            If (Not (IsPostBack)) Then
                ItemList.DataBind()
            End If

        Else
                If (Not (IsPostBack)) Then
                ita = New List(Of Item)
                ita.Add(New Item)
                ItemList.DataSource = ita
                ItemList.DataBind()
            End If
            Compute_Total()
        End If
    End Sub

    Private Sub Compute_Total()
        Dim subt = 0
        Dim dc = 0
        For Each i In ita
            subt += i.precio * i.cantidad
            dc += i.precio * i.cantidad * (i.descuento / 100)
        Next
        txt_subtotal_factura.Text = subt
        txt_descuento_factura.Text = dc
        txt_iva_factura.Text = "14%"
        txt_ice_factura.Text = "0%"
        txt_total_factura.Text = (subt - dc) * 1.14
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

        Dim iid = Me.ita(Me.ita.Count - 1).Iditem
        If (iid <> -1) Then
            ita.Add(New Item())
            ItemList.DataSource = Me.ita
            ItemList.DataBind()
        End If
        Compute_Total()
    End Sub

    Protected Sub btn_limpiar_detalle_Click(sender As Object, e As ImageClickEventArgs) Handles btn_limpiar_detalle.Click
        ita.Clear() 'vacío mi lista de elementos
        ita.Add(New Item()) 'agrego uno por defecto
        ItemList.DataBind() 'actualizo la vista de repetidor
    End Sub
    Protected Sub ItaCommand(sender As Object, e As RepeaterCommandEventArgs)
        Dim itd As TextBox = DirectCast(e.Item.FindControl("txt_codigo_producto"), TextBox) 'Cuadro de texto en el cual ingresas el id
        Dim i As Item = fdbc.GetItem(itd.Text) 'Traigo el item de la base de datos
        Dim desc As Label = DirectCast(e.Item.FindControl("txt_descripcion"), Label) 'label que muestra el nombre del producto
        Dim pu As Label = DirectCast(e.Item.FindControl("txt_precio_unitario"), Label) 'label que muestra el precio unitario del producto
        Dim cant As TextBox = DirectCast(e.Item.FindControl("txt_cantidad"), TextBox) 'caja de texto que tiene la cantidad de producto a facturar
        Dim desct As TextBox = DirectCast(e.Item.FindControl("txt_descuento"), TextBox) ' caja de texto que tiene el descuento a aplicar
        i.descuento = desct.Text
        i.cantidad = cant.Text
        desc.Text = i.nombre 'asigno el nombre del item de la base al label correspondiente
        pu.Text = i.precio 'de igual manera con el precio unitario
        ita(e.Item.ItemIndex) = i 'lo reemplazo con el recientemente obtenido item de la base de daots
        Me.ViewState.Add("ita", Me.ita)
    End Sub
    Protected Sub btn_nueva_factura_Click(sender As Object, e As ImageClickEventArgs) Handles btn_nueva_factura.Click
        txt_ciudad.Text = ""
        txt_cliente.Text = ""
        txt_cambio_factura.Text = ""
        txt_correo.Text = ""
        txt_descuento_factura.Text = ""
        txt_direccion.Text = ""
        txt_efectivo_factura.Text = ""
        txt_ice_factura.Text = ""
        txt_iva_factura.Text = ""
        txt_numero_factura.Text = ""
        txt_ruc.Text = ""
        txt_subtotal_factura.Text = ""
        txt_telefono.Text = ""
        txt_total_factura.Text = ""
        ita.Clear()
        ItemList.DataSource = ita

    End Sub

    Private Sub Facturacion_PreRender(sender As Object, e As EventArgs) Handles Me.PreRender
        Me.ViewState.Add("ita", Me.ita)
    End Sub

    Protected Sub btn_eliminar_factura_Click(sender As Object, e As ImageClickEventArgs) Handles btn_eliminar_factura.Click
        Response.Redirect(Request.RawUrl)
    End Sub
End Class