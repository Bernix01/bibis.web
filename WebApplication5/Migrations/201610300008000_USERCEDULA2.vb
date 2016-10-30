Imports System
Imports System.Data.Entity.Migrations
Imports Microsoft.VisualBasic

Namespace Migrations
    Public Partial Class USERCEDULA2
        Inherits DbMigration
    
        Public Overrides Sub Up()
            AddColumn("dbo.AspNetUsers", "Cedula", Function(c) c.String(unicode := false))
        End Sub
        
        Public Overrides Sub Down()
            DropColumn("dbo.AspNetUsers", "Cedula")
        End Sub
    End Class
End Namespace
