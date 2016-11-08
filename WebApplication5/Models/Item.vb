Imports WebApplication5

<Serializable()>
Public Class Item : Implements IComparable
    Public Property Iditem As Int32
    Public Property nombre As String
    Public Property precio As Double
    Public Property descuento As Int16
    Public Property iva As Int16
    Public Property ice As Int16
    Public Property cantidad As Int16

    Public Sub New()
        Me.Iditem = -1
        Me.nombre = ""
        Me.precio = 0
        Me.iva = 14
        Me.ice = 10
        Me.cantidad = 0
        Me.descuento = 0
    End Sub
    Public Function CompareTo(o As Object) As Integer _
         Implements IComparable.CompareTo
        Dim e As Item = TryCast(o, Item)
        If e Is Nothing Then
            Throw New ArgumentException("o is not an Item object.")
        End If

        Return Iditem.CompareTo(e.Iditem)
    End Function
End Class
