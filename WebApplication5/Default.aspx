<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="WebApplication5._Default2" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>BIBIS</h1>
        <p class="lead">Perfumes</p>
        <p>&nbsp;</p>
    </div>

    <div class="row">
        <div class="col-md-6">
            <h2>Facturación</h2>
            <p>
                Módulo de facturación.</p>
            <p>
                <a class="btn btn-default" href="/Facturacion">Entrar</a>
            </p>
        </div>
        <div class="col-md-6">
            <h2>Arqueo</h2>
            <p>
                Módulo de arqueo</p>
            <p>
                <a class="btn btn-default" href="/Arqueo">Entrar</a>
            </p>
        </div>
    </div>

</asp:Content>
