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

    Friend Function SaveInvoice(invoice As Factura)

    End Function

    Public Function SaveCliente(nombre As String, apellido As String, direccion As String, email As String, ruc As String, telef As String, ciud As String)
        Try
            Dim asd = Me.Database.SqlQuery(Of Int16)("grabarCliente(@nombre,@apellido,@email,@direccion,@ruc,@telefono,@ciudad)", New MySqlParameter("nombre", nombre), New MySqlParameter("apellido", apellido), New MySqlParameter("direccion", direccion), New MySqlParameter("email", email), New MySqlParameter("ruc", ruc), New MySqlParameter("telefono", telef), New MySqlParameter("ciudad", ciud)).ToArray()

            Return asd
        Catch e As MySqlException
            e.ToString()
        End Try

    End Function

End Class
