Imports System
Imports System.Data.Entity
Imports System.Globalization
Imports WebApplication5

Public Class FacturaDbContext
    Inherits ApplicationDbContext

    'Obtiene un cliente dentro de la base dado su identificación
    Friend Function GetCliente(text As String) As Array
        Dim params As New MySqlParameter("ruc", text)
        Dim asd = Me.Database.SqlQuery(Of Cliente)("getCliente(@ruc)", params).ToArray
        Return asd
    End Function

    'Obtiene un item dentro de la base dado in id
    Friend Function GetItem(iid As Integer) As Item
        Dim params As New MySqlParameter("ic", iid)
        Dim asd = Me.Database.SqlQuery(Of Item)("getItem(@ic)", params).ToArray
        Return asd(0)
    End Function

    Friend Function SaveInvoice(numFactura As String, vendedor As String, cliente As String, formaPago As String, total As Double)
        Try
            Dim asd = Me.Database.SqlQuery(Of Int16)("grabarFactura(@nombre,@apellido,@direccion,@email)", New MySqlParameter("nombre", vendedor), New MySqlParameter("apellido", cliente), New MySqlParameter("direccion", formaPago), New MySqlParameter("email", total.ToString("F", CultureInfo.InvariantCulture))).ToArray()
            Return asd(0)
        Catch e As MySqlException
            e.ToString()
        End Try
        Return 0
    End Function

    Public Function SaveCliente(nombre As String, apellido As String, direccion As String, email As String, ruc As String, telef As String, ciud As String)
        Try
            Dim asd = Me.Database.SqlQuery(Of Int16)("grabarCliente(@nombre,@apellido,@telefono,@ruc,@direccion,@ciudad,@email)", New MySqlParameter("nombre", nombre), New MySqlParameter("apellido", apellido), New MySqlParameter("direccion", direccion), New MySqlParameter("email", email), New MySqlParameter("ruc", ruc), New MySqlParameter("telefono", telef), New MySqlParameter("ciudad", ciud)).ToArray()

            Return asd
        Catch e As MySqlException
            e.ToString()
        End Try
        Return -1
    End Function

    Friend Sub SaveItemInInvoice(iditem As Integer, cantidad As Short, descuento As Short, idfa As String)
        Try
            Dim asd = Me.Database.SqlQuery(Of Int16)("grabarItem(@nombre,@apellido,@direccion,@email)", New MySqlParameter("nombre", iditem), New MySqlParameter("apellido", cantidad), New MySqlParameter("direccion", descuento), New MySqlParameter("email", idfa)).ToArray()
        Catch e As MySqlException
            e.ToString()
        End Try
    End Sub

    Friend Function GetFactura(idf As Int16) As Factura
        Try
            Dim asd = Me.Database.SqlQuery(Of Factura)("getFactura(@id)", New MySqlParameter("id", idf)).ToArray()
            Return asd(0)
        Catch e As Exception
            e.ToString()
            Return Nothing
        End Try
    End Function

    Friend Function GrabarPago(idfa As Int16, pago As Pago) As Int16
        Try
            Dim asd = Me.Database.SqlQuery(Of Int16)("grabarPago(@id,@tipotar,@numtar,@efe,@tot,@montotar)", New MySqlParameter("id", idfa), New MySqlParameter("tipotar", pago.tipo_tarjeta), New MySqlParameter("numtar", pago.num_tarjeta), New MySqlParameter("efe", pago.efectivo.ToString("F", CultureInfo.InvariantCulture)), New MySqlParameter("tot", pago.total.ToString("F", CultureInfo.InvariantCulture)), New MySqlParameter("montotar", pago.monto_tarjeta.ToString("F", CultureInfo.InvariantCulture))).ToArray()
            asd.Count
            Return If(asd.Count = 1, asd(0), -1)
        Catch e As Exception
            Console.WriteLine(e.ToString())
            Return Nothing
        End Try
    End Function

    Friend Function GetNumFactura() As Int16
        Try
            Dim num = Me.Database.SqlQuery(Of Int16)("getNumFactura()").ToArray
            Return num(0) + 1
        Catch ex As Exception
            ex.ToString()
            Return 0
        End Try
    End Function

    Friend Function GetPago(idfa As Int16) As Pago
        Try
            Dim num = Me.Database.SqlQuery(Of Pago)("getPago(@idfa)", New MySqlParameter("idfa", idfa)).ToArray
            Return If(num.Count = 1, num(0), Nothing)
        Catch ex As Exception
            ex.ToString()
            Return Nothing
        End Try
    End Function

    Friend Function GetItems(idfa As Short) As List(Of Item)
        Try
            Dim ita As List(Of Item) = Me.Database.SqlQuery(Of Item)("getItemsFactura(@id)", New MySqlParameter("id", idfa)).ToList()
            Return ita
        Catch ex As Exception
            ex.ToString()
            Return New List(Of Item)
        End Try
    End Function

    Friend Function Anular(idfa As Int32)
        Try
            Dim asd = Me.Database.SqlQuery(Of Int32)("anularFactura(@idfa)", New MySqlParameter("idfa", idfa)).ToList()
            Return asd(0)
        Catch ex As Exception
            Return ex.ToString()
        End Try
        Return -1
    End Function
End Class
