<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ITCR.AsignacionAutomaticaCargas.Interfaz._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="homepage">
        <div class="logo col-xs-12 col-md-4 pointer col-center">
            <img alt="" class="text-center" src="/Content/images/logo2.png" />
        </div>
        <section>
            <div class="col-xs-12 col-md-4 col-center section-form">
                <div class="form-section">
                    <input type="text" name="usuario" placeholder="Usuario"/><br>
                    <input type="text" name="contrasena" placeholder="Contraseña"/><br>
                    <input type="checkbox" name="restaurar" value="restaurar">Restablecer Contraseña<br>
                    <button type="button" class="btn btn-default">Iniciar</button>
                </div>
            </div>
        </section>
        <section>
            <div class="col-xs-10 col-md-6 col-center text-center">
                <h2> Instituto Tecnologico de Costa Rica </h2>
                <h4> Copyright © 2015 Tech Forward All Rights Reserved </h4>
            </div>
        </section>
     </div>

</asp:Content>
