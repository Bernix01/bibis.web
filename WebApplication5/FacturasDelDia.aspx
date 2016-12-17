<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="FacturasDelDia.aspx.vb" Inherits="WebApplication5.FacturasDelDia" %>

<%@ Import Namespace="WebApplication5" %>
<%@ Import Namespace="Microsoft.AspNet.Identity" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div style="padding-top:1em;">
        <div class="well">
            
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
</asp:Content>
