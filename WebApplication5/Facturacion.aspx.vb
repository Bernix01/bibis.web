
Imports System.Data.Entity
Imports System.Security.Claims
Imports System.Security.Principal

Public Class Facturacion
    Inherits Page
    Private fdbc As FacturaDbContext
    Private fac As Factura
    Private ita As List(Of Item)
    Public ciudades As IList(Of Ciudad)
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        fdbc = New FacturaDbContext()
        If (Me.ViewState("ita") IsNot Nothing And Me.ViewState("fa") IsNot Nothing) Then
            fac = CType(Me.ViewState("fa"), Factura)
            fac.ita = CType(Me.ViewState("ita"), List(Of Item))
            ita = fac.ita
            ItemList.DataSource = ita
            If (Not (IsPostBack)) Then
                ItemList.DataBind()
            End If
        Else
            If (Request.QueryString("idfa") IsNot Nothing) Then

                getFactura(Request.QueryString("idfa"))
                ita = fac.ita
                txt_ruc.Text = fac.id_cliente
                buscarcliente()
                lbl_num_factura.Text = fac.id
                lbl_emision.Text = String.Format("{0:dd/MM/yyyy}", fac.fecha)
                lbl_vencimiento.Text = String.Format("{0:dd/MM/yyyy}", fac.fecha.AddDays(95))
            Else
                If (Not (IsPostBack)) Then
                    fac = New Factura(fdbc)
                    fac.id_vendedor = GetCedula(Context.User.Identity)
                    lbl_num_factura.Text = fdbc.GetNumFactura()
                    fac.fecha = DateTime.Now()
                    lbl_emision.Text = String.Format("{0:dd/MM/yyyy}", fac.fecha)
                    lbl_vencimiento.Text = String.Format("{0:dd/MM/yyyy}", DateTime.Now.AddDays(95))
                    ita = fac.ita
                    ItemList.DataSource = ita
                    ItemList.DataBind()
                End If
            End If
                Compute_Total()
            End If
    End Sub

    'Computa el total de la factura y lo muestra dentro de la vista.
    Private Sub Compute_Total()
        Dim subt As Double = 0
        Dim dc As Double = 0
        For Each i In ita
            subt += i.precio * i.cantidad
            dc += i.precio * i.cantidad * (i.descuento / 100)
        Next
        txt_subtotal_factura.Text = String.Format("{0:0.00}", subt)
        txt_descuento_factura.Text = String.Format("{0:0.00}", dc)
        txt_iva_factura.Text = "14%"
        txt_ice_factura.Text = "0%"
        txt_total_factura.Text = String.Format("{0:0.00}", (subt - dc) * 1.14)
    End Sub

    'obtiene la cédula del vendedor actualmente logeado
    Public Function GetCedula(Identity As IIdentity) As String
        Dim claiim = CType(Identity, ClaimsIdentity).FindFirst("CEDULA")
        ' Test for null to avoid issues during local testing
        Return If(claiim IsNot Nothing, claiim.Value, "")
    End Function

    'llama la método de buscar cliente dentro de la base al hacer click en el botón de buscar cliente
    Private Sub btn_buscar_cliente_Click(sender As Object, e As ImageClickEventArgs) Handles btn_buscar_cliente.Click
        buscarcliente()
    End Sub

    'busca un cliente dentro de la base
    Private Sub buscarcliente()
        Dim clientes = fdbc.GetCliente(txt_ruc.Text)
        If (clientes.Length = 0) Then
            Return
        End If
        Dim cliente = clientes(0)
        fac.id_cliente = cliente.ruc
        txt_ruc.ReadOnly = True
        txt_cliente.Text = cliente.nombre & " " & cliente.apellido
        txt_cliente.ReadOnly = True
        txt_direccion.Text = cliente.direccion
        txt_direccion.ReadOnly = True
        txt_ciudad.Text = cliente.ciudad
        txt_ciudad.ReadOnly = True
        txt_telefono.Text = cliente.telefono
        txt_telefono.ReadOnly = True
        txt_correo.Text = cliente.email
        txt_correo.ReadOnly = True
        btn_agregar_cliente.Visible = False
    End Sub

    'agrega el último item ingresado a la lista de items de la factura y recarga la vista
    Private Sub btn_agregar_detalle_Click(sender As Object, e As ImageClickEventArgs) Handles btn_agregar_detalle.Click

        Dim iid = Me.ita(Me.ita.Count - 1).Iditem
        If (iid <> -1) Then
            ita.Add(New Item())
            ItemList.DataSource = Me.ita
            ItemList.DataBind()
        End If
        Compute_Total()
    End Sub

    'elimina todos los items de la lista de items limpiando también la vista
    Protected Sub btn_limpiar_detalle_Click(sender As Object, e As ImageClickEventArgs) Handles btn_limpiar_detalle.Click
        ita.Clear() 'vacío mi lista de elementos
        ita.Add(New Item()) 'agrego uno por defecto
        ItemList.DataBind() 'actualizo la vista de repetidor
    End Sub

    'busca un item dentro de la base
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
        Response.Redirect(Request.RawUrl)
    End Sub

    'guarda ita y fac para que se mantengan existentes entre cada postback
    Private Sub Facturacion_PreRender(sender As Object, e As EventArgs) Handles Me.PreRender
        Me.ViewState.Add("ita", Me.ita)
        Me.ViewState.Add("fac", Me.fac)
    End Sub

    Protected Sub btn_eliminar_factura_Click(sender As Object, e As ImageClickEventArgs) Handles btn_eliminar_factura.Click
        Response.Redirect(Request.RawUrl)
    End Sub

    Protected Sub btn_agregar_cliente_Click(sender As Object, e As ImageClickEventArgs) Handles btn_agregar_cliente.Click
        If (Not (IsValid)) Then
            Return
        End If
        Dim id As String = fdbc.SaveCliente(txt_cliente.Text, "", txt_direccion.Text, txt_correo.Text, txt_ruc.Text, txt_telefono.Text, txt_ciudad.Text).ToString()
        buscarcliente()
        btn_agregar_cliente.Visible = False

    End Sub

    Private Sub grabarFactura()
        Dim idfa As Int16 = CType(fdbc.SaveInvoice(lbl_num_factura.Text, GetCedula(Context.User.Identity), txt_ruc.Text, If(ddl_forma_pago.Text = "Efectivo", 1, 0), CType(txt_total_factura.Text, Double)), Int16)
        If (idfa <> -1) Then
            grabarItems(idfa)
            alert("Factura guardada con éxito.")
        End If

        alert("Error al guardar factura.")
    End Sub

    Private Sub grabarItems(idfa As String)
        For Each i In ita
            If (i.Iditem = -1) Then
                Continue For
            End If
            fdbc.SaveItemInInvoice(i.Iditem, i.cantidad, i.descuento, idfa)
        Next
    End Sub

    Private Sub getFactura(idfa As Int16)
        Dim fa = fdbc.GetFactura(idfa)
        If (fa IsNot Nothing) Then
            fa.ita = fdbc.GetItems(idfa)
            Me.fac = fa
            ita = fac.ita
            lbl_cliente.Text = ita.Count()
            ItemList.DataSource = ita
            ItemList.DataBind()
            Return
        End If
        fa = New Factura(fdbc)
        fac = fa
        alert("Factura no encontrada!")
    End Sub

    Protected Sub btn_generar_factura_Click(sender As Object, e As ImageClickEventArgs) Handles btn_generar_factura.Click
        grabarFactura()
    End Sub

    Private Sub alert(msg As String)
        Dim script As String = "<script type='text/javascript'> alert(" + msg + ");</script>"
        ClientScript.RegisterClientScriptBlock(Me.GetType(), "AlertBox", script)
    End Sub
    Protected Sub btn_buscar_factura_Click(sender As Object, e As ImageClickEventArgs) Handles btn_buscar_factura.Click
        Dim url = "/Facturacion" & "?idfa=" & txt_numero_factura.Text
        Response.Redirect(url)
    End Sub
End Class