<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ITCR.AsignacionAutomaticaCargas.Interfaz._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="text-center">
        <section>
            <div class="logo col-xs-12 col-md-4 pointer col-center">
                <img alt="" class="text-center" src="/Content/images/logo2.png" />
            </div>
        </section>
        <section>
            <div class="section-form">
                <div class="log-in">
                    <input type="text" name="usuario" placeholder="Usuario" maxlength="30"/><br>
                    <input type="text" name="contrasena" placeholder="Contraseña" maxlength="30"/><br>
                    <a href="#" class="white-text checkbox-text">¿Olvidó su contraseña?</a><br>
                    <button type="button" class="btn btn-default">Iniciar</button><br>
                    <a href="#">Registresé Aquí</a>
                </div>
            </div>
        </section>
        <section>
            <div class="col-xs-10 col-md-6 col-center text-center">
                <h2>Instituto Tecnologico de Costa Rica </h2>
                <h4> Copyright © 2015 Tech Forward All Rights Reserved </h4>
            </div>
        </section>
     </div>

</asp:Content>
