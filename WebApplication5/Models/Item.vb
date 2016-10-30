Public Class Item
    Public Property Iditem As Int32
    Public Property nombre As String
    Public Property precio As Double
    Public Property iva As Int16
    Public Property ice As Int16

    Public Sub New()
        Me.Iditem = 0
        Me.nombre = ""
        Me.precio = 0
        Me.iva = 14
        Me.ice = 10
    End Sub

End Class
