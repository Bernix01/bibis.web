<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="FacturasDelDia.aspx.vb" Inherits="WebApplication5.FacturasDelDia" %>

<%@ Import Namespace="WebApplication5" %>
<%@ Import Namespace="Microsoft.AspNet.Identity" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div style="padding-top:1em;">
        <div class="well">
            <h2 class="pull-right">
            <asp:Label ID="res" runat="server" Text="$0"></asp:Label></h2>
            <h3>Inicio</h3>
            <asp:TextBox ID="finicio" runat="server" ReadOnly = "true"></asp:TextBox><img src="images/calendar.ico" width="27" style="margin-left:1em;" />
            <h3>Fin</h3>
            <asp:TextBox ID="ffin" runat="server" ReadOnly = "true"></asp:TextBox><img src="images/calendar.ico" width="27" style="margin-left:1em;" />
            <br />
            <asp:Button ID="buscar" runat="server" CssClass="btn btn-default pull-right btn-lg" Text="Buscar" />
            <br />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>
        <asp:Repeater runat="server" ID="facs">
            <HeaderTemplate>
                <table class="table">
                    <thead>
                        <tr>
                            <th># Factura</th>
                            <th># Vendedor</th>
                            <th>Fecha</th>
                            <th>Forma de pago</th>
                            <th>Total</th>
                            <th>Estado</th>
                            <th>Acciones</th>
                        </tr>
                    </thead>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td>
                        <%# Eval("id")%>
                    </td>
                    <td>
                        <%# DataBinder.Eval(Container.DataItem, "id_vendedor")%>
                    </td>
                    <td>
                        <%# DataBinder.Eval(Container.DataItem, "fecha")%>
                    </td>
                    <td>
                        <%# If(DataBinder.Eval(Container.DataItem, "forma_pago") = 1, "EFECTIVO", If(DataBinder.Eval(Container.DataItem, "forma_pago") = 2, "CRÉDITO", "EFECTIVO + CRÉDITO")) %>
                    </td>
                    <td>
                        <%# DataBinder.Eval(Container.DataItem, "total")%>
                    </td>
                    <td>
                        <%# If(DataBinder.Eval(Container.DataItem, "total") = 1, "ANULADA", "ACTIVA")%>
                    </td>
                    <td>
                        <a href="<%# "/Facturacion" & "?idfa=" & DataBinder.Eval(Container.DataItem, "id") %>">ver</a>
                    </td>
                </tr>
            </ItemTemplate>
            <FooterTemplate>
                </table>
            </FooterTemplate>
        </asp:Repeater>
    </div>
    <script src="/Scripts/jquery.dynDateTime.js" type="text/javascript"></script>
    <script src="/Scripts/calendar-es.js" type="text/javascript"></script>

    <script type="text/javascript">
    $(document).ready(function () {
        $("#<%=finicio.ClientID %>").dynDateTime({
            showsTime: false,
            ifFormat: "%Y-%m-%d",
            daFormat: "%l;%M %p, %e %m, %Y",
            align: "BR",
            electric: false,
            singleClick: false,
            displayArea: ".siblings('.dtcDisplayArea')",
            button: ".next()"
        });
         $("#<%=ffin.ClientID %>").dynDateTime({
            showsTime: false,
            ifFormat: "%Y-%m-%d",
            daFormat: "%l;%M %p, %e %m, %Y",
            align: "BR",
            electric: false,
            singleClick: false,
            displayArea: ".siblings('.dtcDisplayArea')",
            button: ".next()"
        });
    });
</script>
</asp:Content>
