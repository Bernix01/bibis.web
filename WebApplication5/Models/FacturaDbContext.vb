Imports System
Imports System.Data.Entity

Public Class FacturaDbContext
    Inherits ApplicationDbContext

    Public Function GetCities() As Array
        Dim params As New MySqlParameter
        Dim asd = Me.Database.SqlQuery(Of Ciudad)("getCities", params).ToArray
        Return asd
    End Function

    Friend Function GetCliente(text As String) As Array
        Dim params As New MySqlParameter("ruc", text)
        Dim asd = Me.Database.SqlQuery(Of Cliente)("getCliente(@ruc)", params).ToArray
        Return asd
    End Function

    Friend Function GetItem(iid As Integer) As Item
        Dim params As New MySqlParameter("ic", iid)
        Dim asd = Me.Database.SqlQuery(Of Item)("getItem(@ic)", params).ToArray
        Return asd(0)
    End Function
End Class
