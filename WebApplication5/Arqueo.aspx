<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Arqueo.aspx.vb" Inherits="WebApplication5.Arqueo" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 99%;
            height: 27px;
        }
        .style2
        {
            height: 23px;
        }
        .style3
        {}
        .style4
        {}
        .style5
        {
            float: right;
        }
        .style6
        {}
        .style8
        {}
        .style9
        {
            width: 100%;
        }
        .style10
        {
            position: relative;
            text-align: center;
            top: 2px;
            left: 82px;
            height: 88px;
            width: 440px;
        }
        .style12
        {
            font-size: xx-small;
            color: #000080;
        }
        .style16
        {
            width: 75px;
        }
        .style14
        {
            color: #FF6699;
            background-color: #FFCC66;
        }
        .style17
        {
            font-size: xx-small;
            color: #0000CC;
        }
        .style18
        {
            width: 191px;
        }
        .style19
        {
            width: 163px;
        }
        .style20
        {
            float: right;
        }
    </style>
    
    <div>
    
        <table class="style9">
            <tr>
                <td class="style18">
                    &nbsp;</td>
                <td class="style18">
                    &nbsp;</td>
                <td>
    
        <asp:Image ID="Image1" runat="server" CssClass="style10" 
            ImageUrl="~/images/REPORTE.gif" />
                </td>
                <td>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <table class="style1">
            <tr>
                <td>
                    <table class="style9">
                        <tr>
                            <td>
                                <table class="style9">
                                    <tr>
                                        <td>
                                <table class="style4">
                                    <tr>
                                        <td>
                                            <asp:ImageButton ID="bnt_nuevo_arqueo" runat="server" 
                                                ImageUrl="~/images/NUEVO.gif" />
                                            <span class="style6">
                                            <br />
                                            <span class="style12">NUEVO</span></span></td>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                </table>
                                        </td>
                                        <td>
                                            <asp:ImageButton ID="bnt_modificar_arqueo" runat="server" CssClass="style13" 
                                                Height="30px" 
                                                ImageUrl="~/images/editar.png" 
                                                Width="32px" />
                                            <span class="style6">
                                            <br />
                                            <span class="style12">MODIFICAR</span></span></td>
                                        <td>
                                            <asp:ImageButton ID="bnt_generar_arqueo" runat="server" CssClass="style14" 
                                                Height="34px" 
                                                ImageUrl="~/images/GRABAR.gif" 
                                                Width="39px" />
                                            <span class="style6">
                                            <br />
                                            <span class="style12">GENERAR</span></span></td>
                                        <td class="style16">
                                            <span class="style6">
                                            <asp:ImageButton ID="ImageButton9" runat="server" CssClass="style14" 
                                                Height="32px" 
                                                ImageUrl="~/images/LIMPIAR1.png" 
                                                Width="32px" />
                                            <br />
                                            <span class="style17">LIMPIAR</span></span></td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                </table>
                            </td>
                            <td>
                                <table class="style9">
                                    <tr>
                                        <td>
                                            <asp:Label ID="lbl_reporte" runat="server" Text="N° REPORTE" CssClass="style20" 
                                                ForeColor="#0000CC"></asp:Label>
                                        </td>
                                        <td class="style19">
                                            <asp:TextBox ID="txt_reporte" runat="server"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:ImageButton ID="bnt_buscar_arqueo" runat="server" 
                                                
                                                ImageUrl="~/images/BUSCAR.gif" />
                                            <span class="style6">
                                            <br />
                                            <span class="style12">BUSCAR</span></span></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Panel ID="Panel2" runat="server" BorderColor="#333399" ForeColor="#333399" 
                        GroupingText="ENCABEZADO">
                        <table class="style1">
                            <tr>
                                <td>
                                    <asp:Label ID="lbl_local" runat="server" Text="LOCAL"></asp:Label>
                                </td>
                                <td>
                                    <asp:DropDownList ID="ddl_local" runat="server">
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    <asp:Label ID="lbl_aprobadas" runat="server" Text="FACTURAS APROBADAS"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txt_aprobadas" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lbl_administrador" runat="server" Text="ADMINISTRADOR"></asp:Label>
                                </td>
                                <td>
                                    <asp:DropDownList ID="ddl_administrador" runat="server">
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    <asp:Label ID="lbl_anuladas" runat="server" Text="FACTURAS ANULADAS"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txt_anuladas" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lbl_fecha" runat="server" Text="FECHA"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txt_fecha" runat="server"></asp:TextBox>
                                </td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Panel ID="Panel3" runat="server" ForeColor="#333399" 
                        GroupingText="VENDEDORES">
                        <table class="style1">
                            <tr>
                                <td>
                                    <table class="style1">
                                        <tr>
                                            <td>
                                                <asp:Label ID="lbl_vendedor" runat="server" Text="VENDEDOR"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:DropDownList ID="ddl_vendedor" runat="server">
                                                </asp:DropDownList>
                                            </td>
                                            <td>
                                                <asp:Label ID="lbl_total_ventas_vendedores" runat="server" 
                                                    Text="TOTAL DE VENTAS"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txt_total_ventas_vendedores" runat="server"></asp:TextBox>
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                <span class="style6">
                                                <asp:ImageButton ID="btn_agregar_vendedor" runat="server" CssClass="style14" 
                                                    Height="28px" 
                                                    ImageUrl="~/images/AÑADIR.png" 
                                                    Width="30px" />
                                                </span>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:GridView ID="GridView1" runat="server" CssClass="style3" Width="329px">
                                    </asp:GridView>
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    <table class="style1">
                                        <tr>
                                            <td>
                                                <asp:Label ID="lbl_consumo_interno" runat="server" Text="CONSUMO INTERNO"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txt_consumo_interno" runat="server"></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:Label ID="lbl_total_vendedores" runat="server" Text="TOTAL VENDEDORES"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txt_vendedores" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="lbl_credito_empleado" runat="server" Text="CREDITO DE EMPLEADO"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txt_credito_empleado" runat="server"></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:Label ID="lbl_total_caja_Vendedores" runat="server" Text="TOTAL CAJA"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txt_total_caja_vendedores" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Panel ID="Panel4" runat="server" ForeColor="#333399" 
                        GroupingText="EFECTIVO">
                        <table class="style1">
                            <tr>
                                <td>
                                    <table class="style1">
                                        <tr>
                                            <td>
                                                <asp:Label ID="lbl_denominacion" runat="server" Text="DENOMINACION"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:DropDownList ID="ddl_denominacion" runat="server">
                                                </asp:DropDownList>
                                            </td>
                                            <td>
                                                <asp:Label ID="lbl_cantidad" runat="server" Text="CANTIDAD"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txt_cantidad" runat="server"></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:Label ID="lbl_total_denominacion" runat="server" Text="TOTAL"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txt_total_denominacion" runat="server"></asp:TextBox>
                                            </td>
                                            <td>
                                                <span class="style6">
                                                <asp:ImageButton ID="bnt_añadir_efectivo" runat="server" CssClass="style14" 
                                                    Height="28px" ImageUrl="~/images/AÑADIR.png" Width="30px" />
                                                </span>
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:GridView ID="GridView2" runat="server" CssClass="style4" Width="382px">
                                    </asp:GridView>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="style1">
                                        <tr>
                                            <td>
                                                <asp:Label ID="lbl_total_efectivo" runat="server" CssClass="style5" 
                                                    Text="TOTAL EFECTIVO"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txt_total_efectivo" runat="server"></asp:TextBox>
                                            </td>
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
                    <asp:Panel ID="Panel5" runat="server" ForeColor="#333399" 
                        GroupingText="TARJETA DE CREDITO">
                        <table class="style1">
                            <tr>
                                <td>
                                    <table class="style1">
                                        <tr>
                                            <td>
                                                <asp:Label ID="lbl_nombre_tarjeta" runat="server" Text="NOMBRE DE TARJETA"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:DropDownList ID="ddl_nombre_tarjeta" runat="server">
                                                </asp:DropDownList>
                                            </td>
                                            <td>
                                                <asp:Label ID="lbl_numero_factura" runat="server" Text="NUMERO DE FACTURA"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txt_numero_factura" runat="server"></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:Label ID="lbl_valor_credito" runat="server" Text="VALOR"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txt_valor_credito" runat="server"></asp:TextBox>
                                            </td>
                                            <td>
                                                <span class="style6">
                                                <asp:ImageButton ID="btn_añadir_credito" runat="server" CssClass="style14" 
                                                    Height="28px" 
                                                    ImageUrl="~/images/AÑADIR.png" 
                                                    Width="30px" />
                                                </span>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:GridView ID="GridView3" runat="server" CssClass="style8" Width="417px">
                                    </asp:GridView>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="style9">
                                        <tr>
                                            <td>
                                                <asp:Label ID="lbl_total_credito" runat="server" CssClass="style5" 
                                                    Text="TOTAL CREDITO"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txt_total_credito" runat="server"></asp:TextBox>
                                            </td>
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
                    <asp:Panel ID="Panel6" runat="server" ForeColor="#333399" 
                        GroupingText="TOTAL DE VENTAS">
                        <table class="style9">
                            <tr>
                                <td>
                                    <asp:Label ID="lbl_total_arqueo" runat="server" CssClass="style5" Height="21px" 
                                        Text="TOTAL" Width="110px"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txt_total_arqueo" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
        </table>
    
    </div>

</asp:Content>
