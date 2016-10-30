Imports System
Imports System.Data.Entity

Public Class FacturaDbContext
    Inherits ApplicationDbContext

    Public Function getCities() As Array
        Dim params As New MySqlParameter
        Dim asd = Me.Database.SqlQuery(Of Ciudad)("getCities", params).ToArray
        Return asd
    End Function

    Friend Function GetCliente(text As String) As Array
        Dim params As New MySqlParameter("ruc", text)
        Dim asd = Me.Database.SqlQuery(Of Cliente)("getCliente(@ruc)", params).ToArray
        Return asd
    End Function
End Class
