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

End Class
