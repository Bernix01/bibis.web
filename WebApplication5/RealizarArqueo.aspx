<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RealizarArqueo.aspx.vb" Inherits="WebApplication5.RealizarArqueo" %>

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
                                        <td>
                                            <asp:Label ID="lbl_num_factura" runat="server" Text=""></asp:Label>
                                        </td>
                                        <td class="style19">
                                            <asp:TextBox ID="txt_reporte" runat="server"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:ImageButton ID="bnt_buscar_arqueo" runat="server" 
                                                
                                                ImageUrl="~/images/BUSCAR.gif" />
                                            <span class="style6">
                                            <br />
                                            <span class="style12">BUSCAR</span></span>

                                        </td>
                                        <td>
                                            <asp:Label ID="Msg"  runat="server" CssClass="label label-danger" Text="" Visible="False"></asp:Label></td>
                                     
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
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
                                    <table class="style9">
                                        <tr>
                                            <td>
                                                <asp:Label ID="lbl_total_credito" runat="server" CssClass="style5" 
                                                    Text="TOTAL CREDITO (VISA)"></asp:Label><br />
                                       
                                            </td><td>
                                                <asp:TextBox ID="txtboxvisa" runat="server"></asp:TextBox>
                                            </td>
                                            </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label1" runat="server" CssClass="style5" 
                                                    Text="TOTAL CREDITO(MASTERCARD)"></asp:Label><br /></td><td>
                                                <asp:TextBox ID="txtboxmaster" runat="server"></asp:TextBox>
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
                                    <asp:Label ID="txt_total_arqueo" runat="server" Text="$0.0"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
        </table>
    
    </div>

</asp:Content>
