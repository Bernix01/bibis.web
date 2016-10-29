<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Credito.aspx.vb" Inherits="bibisprocesos.Credito" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style14
        {
            text-align: center;
            top: 87px;
            left: 15px;
            margin-right: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Panel ID="Panel1" runat="server" ForeColor="#333399" 
            GroupingText="TARJETA DE CREDITO">
            <table class="style1">
                <tr>
                    <td>
                        <asp:Label ID="lbl_nombre_tarjeta" runat="server" Text="NOMBRE DE TARJETA"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lbl_codigo_tarjeta" runat="server" Text="CODIGO"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:DropDownList ID="ddl_nombre_tarjeta" runat="server">
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:TextBox ID="txt_codigo_tarjeta" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:ImageButton ID="btn_guardar_tarjeta" runat="server" CssClass="style14" 
                            Height="41px" 
                            ImageUrl="C:\Users\usuario\Desktop\ali factura\bibis\imagenes\GUARDARR.png" 
                            Width="48px" />
                        <br />
                        GUARDAR</td>
                </tr>
                <tr>
                    <td colspan="2">
                        <br />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
