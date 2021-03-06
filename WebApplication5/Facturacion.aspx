﻿<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Facturacion.aspx.vb" Inherits="WebApplication5.Facturacion" %>

<%@ Import Namespace="WebApplication5" %>
<%@ Import Namespace="Microsoft.AspNet.Identity" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <table class="style4">
            <tr>
                <td class="style7">
                    <table class="style4">
                        <tr>
                            <td class="style21">
                                <table class="style4">
                                    <tr>
                                        <td>
                                            <asp:Image ID="Image2" runat="server" CssClass="style23" Height="73px"
                                                ImageUrl="~/images/bibis.png"
                                                Width="140px" />
                                        </td>
                                        <td>
                                            <asp:Image ID="Image1" runat="server" CssClass="style22" Height="69px"
                                                ImageUrl="~/images/emcabezado.gif"
                                                Width="177px" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <table class="style4">
                        <tr>
                            <td>
                                <table class="style4">
                                    <tr>
                                        <td>
                                            <asp:ImageButton ID="btn_nueva_factura" runat="server"
                                                ImageUrl="~/images/NUEVO.gif" />
                                            <span class="style6">
                                                <br />
                                                NUEVA</span></td>
                                        <td>
                                            <asp:ImageButton ID="btn_generar_factura" runat="server" CssClass="style14"
                                                Height="34px"
                                                ImageUrl="~/images/GRABAR.gif"
                                                Width="39px" />
                                            <span class="style6">
                                                <br />
                                                GENERAR</span></td>
                                        <td>
                                            <asp:ImageButton ID="btn_eliminar_factura" runat="server" CssClass="style15"
                                                Height="30px"
                                                ImageUrl="~/images/borrar.gif"
                                                Width="27px" Visible="false" />
                                            <span class="style6">
                                                <br />
                                                ELIMINAR</span></td>
                                    </tr>
                                </table>
                            </td>
                            <td>
                                <table class="style4">
                                    <tr>
                                        <td>
                                            <asp:Label ID="lbl_numero_factura" runat="server" Text="FACTURA N°"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lbl_num_factura" runat="server" Text=""></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txt_numero_factura" runat="server" CssClass="style5"
                                                Width="94px"></asp:TextBox></td>

                                        <td>
                                            <asp:ImageButton ID="btn_buscar_factura" runat="server"
                                                ImageUrl="~/images/BUSCAR.gif" />
                                            <span class="style6">
                                                <br />
                                                BUSCAR</span></td>
                                        <td>
                                            <asp:Label ID="anulada" runat="server" CssClass="label label-danger" Text="Anulada" Visible="False"></asp:Label></td>
                                        <td></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Panel ID="Panel1" runat="server" GroupingText="ENCABEZADO"
                        ForeColor="#000066">
                        <table class="style4">
                            <tr>
                                <td>
                                    <table class="style4">
                                        <tr>
                                            <td>
                                                <asp:Label ID="lbl_ruc" runat="server" Text="RUC"></asp:Label>
                                            </td>
                                            <td>
                                                <table class="style4">
                                                    <tr>
                                                        <td>
                                                            <asp:TextBox ID="txt_ruc" CssClass="form-control" runat="server"></asp:TextBox>
                                                        </td>
                                                        <td>
                                                            <asp:ImageButton ID="btn_buscar_cliente" runat="server"
                                                                ImageUrl="~/images/BUSCAR.gif" />
                                                            <span class="style6">BUSCAR</span></td>
                                                        <td>
                                                            <asp:ImageButton ID="btn_agregar_cliente" runat="server" CssClass="style16"
                                                                Height="30px"
                                                                ImageUrl="~/images/agregar.png"
                                                                Width="30px" />
                                                            <span class="style6">AGREGAR CLIENTE</span></td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style7">
                                                <asp:Label ID="lbl_cliente" runat="server" Text="CLIENTE"></asp:Label>
                                            </td>
                                            <td class="style7">
                                                <asp:TextBox ID="txt_cliente" CssClass="form-control" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="lbl_direccion" runat="server" Text="DIRECCION"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txt_direccion" CssClass="form-control" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style17">
                                                <asp:Label ID="lbl_ciudad" runat="server" Text="CIUDAD"></asp:Label>
                                            </td>
                                            <td class="style17">
                                                <asp:TextBox ID="txt_ciudad" CssClass="form-control" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="lbl_telefono" runat="server" Text="TELEFONO"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txt_telefono" CssClass="form-control" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="lbl_correo" runat="server" Text="CORREO"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txt_correo" CssClass="form-control" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td>
                                    <table class="style4">
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="lbl_fecha_emisionn" runat="server" Text="FECHA DE EMISION"></asp:Label>
                                            </td>
                                            <td>

                                                <asp:Label ID="lbl_emision" runat="server" Text=""></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="lbl_fecha_vencimiento" runat="server"
                                                    Text="FECHA VENCIMIENTO"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="lbl_vencimiento" runat="server" Text=""></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="lbl_forma_pago" runat="server" Text="FORMA DE PAGO"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:DropDownList ID="ddl_forma_pago" runat="server">
                                                    <asp:ListItem>EFECTIVO</asp:ListItem>
                                                    <asp:ListItem>CREDITO</asp:ListItem>
                                                    <asp:ListItem>EFECTIVO Y CREDITO</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="lbl_cedula_vendedor" runat="server" Text="CEDULA DEL VENDEDOR"></asp:Label>
                                            </td>
                                            <td>
                                                <table class="style4">
                                                    <tr>
                                                        <td>
                                                            <%: GetCedula(Context.User.Identity)  %></td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="lbl_vendedor" runat="server" Text="VENDEDOR"></asp:Label>
                                            </td>
                                            <td>
                                                <%: Context.User.Identity.Name  %></td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>


            <tr>
                <td>
                    <asp:Panel ID="Panel2" runat="server" GroupingText="DETALLE"
                        ForeColor="#000066">
                        <table class="style4">
                            <tr>
                                <td>
                                    <table class="style4">
                                        <tr>
                                            <td>
                                                <table class="style4">
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="lbl_codigo_producto" runat="server" Text="CODIGO DE PRODUCTO"></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="lbl_descripcion" runat="server" Text="DESCRIPCION"></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="lbl_cantidad" runat="server" Text="CANTIDAD"></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="lbl_precio_unitario" runat="server" Text="PRECIO UNITARIO"></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="lbl_descuento" runat="server" Text="DESCUENTO"></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="lbl_total" runat="server" Text="TOTAL"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <asp:Repeater ID="ItemList" OnItemCommand="ItaCommand" runat="server">
                                                        <HeaderTemplate>
                                                        </HeaderTemplate>
                                                        <ItemTemplate>
                                                            <tr>
                                                                <td>
                                                                    <asp:TextBox ID="txt_codigo_producto" CssClass="form-control" TextMode="SingleLine" Enabled='<%# If(DataBinder.Eval(Container.DataItem, "Iditem") <> -1, False, True)  %>' runat="server" Text='<%# IF(DataBinder.Eval(Container.DataItem, "Iditem") <> -1, DataBinder.Eval(Container.DataItem, "Iditem"), "") %>'></asp:TextBox>
                                                                </td>
                                                                <td>
                                                                    <asp:Label ID="txt_descripcion" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "nombre") %>'></asp:Label>
                                                                </td>
                                                                <td>
                                                                    <asp:TextBox ID="txt_cantidad" CssClass="form-control" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "cantidad") %>' Enabled='<%# If(DataBinder.Eval(Container.DataItem, "Iditem") <> -1, False, True)  %>'></asp:TextBox>
                                                                </td>
                                                                <td>
                                                                    <asp:Label ID="txt_precio_unitario" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "precio")%>'></asp:Label>
                                                                </td>
                                                                <td>
                                                                    <asp:TextBox ID="txt_descuento" CssClass="form-control style10" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "descuento")%>' Width="51px"></asp:TextBox>
                                                                    %</td>
                                                                <td>
                                                                    <asp:Button ID="btn_consultar" CommandName="search" runat="server" Visible='<%# If(DataBinder.Eval(Container.DataItem, "Iditem") <> -1, False, True)  %>' Text="Consultar" />
                                                                    <asp:Label ID="txt_total" runat="server" Text='<%# Math.Truncate((DataBinder.Eval(Container.DataItem, "cantidad") * DataBinder.Eval(Container.DataItem, "precio")) * (1 - (DataBinder.Eval(Container.DataItem, "descuento") / 100)) * 100) / 100%>' Visible='<%# If(DataBinder.Eval(Container.DataItem, "Iditem") <> -1, True, False)  %>'></asp:Label>
                                                                </td>
                                                            </tr>
                                                        </ItemTemplate>
                                                        <FooterTemplate>
                                                        </FooterTemplate>
                                                    </asp:Repeater>
                                                </table>
                                            </td>
                                            <td>
                                                <table class="style4">
                                                    <tr>
                                                        <td>
                                                            <asp:ImageButton ID="btn_agregar_detalle" runat="server" CssClass="style20"
                                                                Height="31px"
                                                                ImageUrl="~/images/agregar.png"
                                                                Width="30px" />
                                                            <span class="style6">AGREGAR</span>
                                                        </td>
                                                        <td>
                                                            <asp:ImageButton ID="btn_limpiar_detalle" runat="server" CssClass="style24"
                                                                Height="22px"
                                                                ImageUrl="~/images/limpiar.png"
                                                                Width="22px" />
                                                            <span class="style6">
                                                                <br />
                                                                <br />
                                                                LIMPIAR</span></td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td>
                    <table class="style4">
                        <tr>
                            <td>
                                <asp:Label ID="lbl_subtotal_factura" runat="server" Text="SUBTOTAL"></asp:Label>
                            </td>
                            <td>$
                                                <asp:Label ID="txt_subtotal_factura" runat="server"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lbl_iva_factura" runat="server" Text="IVA"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="txt_iva_factura" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lbl_descuento_factura" runat="server" Text="DESCUENTO"></asp:Label>
                            </td>
                            <td>$
                                                <asp:Label ID="txt_descuento_factura" runat="server"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lbl_ice_factura" runat="server" Text="ICE"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="txt_ice_factura" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>

                            <td></td>
                            <td>
                                <asp:Label ID="lbl_total_factura" runat="server"
                                    Text="TOTAL"></asp:Label>
                            </td>
                            <td>$
                                                <asp:Label ID="txt_total_factura" runat="server"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
            </tr>
            <tr id="efectivoContainer" runat="server">
                <td>
                    <asp:Label ID="lbl_efectivo_factura" runat="server" Text="EFECTIVO"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt_efectivo_factura" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="lbl_cambio_factura" runat="server" Text="CAMBIO"></asp:Label>
                </td>
                <td>$
                                                <asp:Label ID="txt_cambio_factura" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>

                <td>
                    <asp:Label ID="lbl_nombre_tarjeta" runat="server" Text="NOMBRE DE TARJETA"></asp:Label><br />
                    <asp:DropDownList ID="ddl_nombre_tarjeta" runat="server">
                        <asp:ListItem>VISA</asp:ListItem>
                        <asp:ListItem>MASTERCARD</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:Label ID="lbl_codigo_tarjeta" runat="server" Text="Número de tarjeta"></asp:Label><br />
                    <asp:TextBox ID="txt_codigo_tarjeta" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Monto"></asp:Label><br />
                    <asp:TextBox ID="txt_tarjeta_valor" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <br />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="style11">
                    <asp:Label ID="Msg" runat="server" CssClass="label label-info" Text=""></asp:Label></td>
            </tr>
        </table>

    </div>


</asp:Content>
