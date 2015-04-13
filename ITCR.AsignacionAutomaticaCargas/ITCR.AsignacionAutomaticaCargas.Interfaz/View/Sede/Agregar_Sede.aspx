<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Agregar_Sede.aspx.cs" Inherits="ITCR.AsignacionAutomaticaCargas.Interfaz.View.Sede.Agregar_Sede" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="multipage">
        <section class="col-md-9 col-sm-9 col-center">
            <h3>Agregar una sede</h3>
             <div class="section-form">
                <div class="row">
                    <input class="" type="text" name="nombre_sede" placeholder="Nombre de la sede" maxlength="60"/>
                    <input class="pull-right" type="text" name="codigo_sede" placeholder="Código de la sede" maxlength="30"/>
                </div>
                <div class="final-button">
                    <button type="button" class="btn btn-default">Agregar</button>
                </div>
            </div>
        </section>
    </div>
</asp:Content>
