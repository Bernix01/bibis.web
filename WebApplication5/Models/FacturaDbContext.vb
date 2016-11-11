Imports System
Imports System.Data.Entity

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

    Friend Function SaveInvoice(numFactura As String, vendedor As String, cliente As String, formaPago As String, total As String)
        Try
            Dim asd = Me.Database.SqlQuery(Of Int16)("grabarFactura(@nombre,@apellido,@direccion,@email)", New MySqlParameter("nombre", vendedor), New MySqlParameter("apellido", cliente), New MySqlParameter("direccion", formaPago), New MySqlParameter("email", total)).ToArray()
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
End Class
