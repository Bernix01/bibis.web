<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master"  CodeBehind="FacturasDelDia.aspx.vb" Inherits="WebApplication5.FacturasDelDia" %>

<%@ Import Namespace="WebApplication5" %>
<%@ Import Namespace="Microsoft.AspNet.Identity" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
  
    <div>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <asp:Repeater runat="server" ID="facs">
        <HeaderTemplate>
            <table class="table">
                <thead>
                    <td># Factura</td>
                    <td># Vendedor</td>
                    <td>Fecha</td>
                    <td>Forma de pago</td>
                    <td>Total</td>
                    <td>Estado</td>
                    <td>Acciones</td>
                </thead>
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
                <%# DataBinder.Eval(Container.DataItem, "id")%>
            </tr>
            <tr>
                <%# DataBinder.Eval(Container.DataItem, "id_vendedor")%>
            </tr>
            <tr>
                <%# DataBinder.Eval(Container.DataItem, "fecha")%>
            </tr>
            <tr>
                <%# If(DataBinder.Eval(Container.DataItem, "forma_pago") = 1, "EFECTIVO", If(DataBinder.Eval(Container.DataItem, "forma_pago") = 2, "CRÉDITO", "EFECTIVO + CRÉDITO")) %>
            </tr>
            <tr>
                <%# DataBinder.Eval(Container.DataItem, "total")%>
            </tr>
            <tr>
                <%# If(DataBinder.Eval(Container.DataItem, "total") = 1, "ANULADA", "ACTIVA")%>
            </tr>
            <tr>
                <a href="<%# "/Facturacion" & "?idfa=" & DataBinder.Eval(Container.DataItem, "id") %>">ver</a>
            </tr>
        </ItemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:Repeater>
    </div>
    </asp:Content>
