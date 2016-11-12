<Serializable()>
Public Class Factura
    Public Property id As Int16
    Public Property id_vendedor As String
    Public Property fecha As DateTime
    Public Property id_cliente As String
    Public Property forma_pago As Int16
    Public Property total As Double
    Public Property ita As List(Of Item)

    Public Sub New()

    End Sub
    Public Sub New(fdbc As FacturaDbContext)
        Me.id = fdbc.GetNumFactura()
        ita = New List(Of Item)()
        ita.Add(New Item())
    End Sub
End Class
