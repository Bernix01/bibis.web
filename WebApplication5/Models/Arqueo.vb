Public Class Arqueo
    Public Property id As Int16
    Public Property idusuario As String
    Public Property fecha As DateTime
    Public Property total_efectivo As Double
    Public Property total_mastercard As Double
    Public Property total_visa As Double
    Public Property total As Double

    Public Sub New()

    End Sub
    Public Sub New(adbc As ArqueoDbContext)
        Me.id = adbc.GetNumArqueo()
    End Sub
End Class
