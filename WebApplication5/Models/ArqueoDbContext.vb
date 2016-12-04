Public Class ArqueoDbContext
    Inherits ApplicationDbContext



    Friend Function GetNumArqueo() As Int16
        Try
            Dim num = Me.Database.SqlQuery(Of Int16)("getNumArqueo()").ToArray
            Return num(0) + 1
        Catch ex As Exception
            ex.ToString()
            Return 0
        End Try
    End Function

    Friend Function GetArqueo(ida As Int16)
        Try
            Dim asd = Me.Database.SqlQuery(Of Arqueo)("getArqueo(@id)", New MySqlParameter("id", ida)).ToArray()
            Return asd(0)
        Catch ex As Exception
            ex.ToString()
            Return Nothing
        End Try
    End Function

    Friend Function arquear(usu As String, totalvisa As Double, totalmaster As Double, totalefe As Double)
        Try
            Dim asd = Me.Database.SqlQuery(Of Int16)("grabarArqueo(@usuario,@efec,@totvisa,@totmast)", New MySqlParameter("usuario", usu), New MySqlParameter("efec", totalefe), New MySqlParameter("totvisa", totalvisa), New MySqlParameter("totmast", totalmaster)).ToArray()

            Return asd
        Catch ex As Exception
            ex.ToString()
            Return 0
        End Try
    End Function



End Class
