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
                    <asp:TextBox ID="txtUsuario" runat="server" class="form-control" maxlength="40" placeholder="Usuario"></asp:TextBox>
                    <asp:TextBox ID="txtContrasena" runat="server" class="form-control" maxlength="40" placeholder="Contraseña" TextMode="Password"></asp:TextBox>
                    <a href="#" class="white-text checkbox-text">¿Olvidó su contraseña?</a><br>
                    <asp:Button ID="btnIniciarSesion" runat="server" class="btn btn-default" Text="Iniciar" OnClick="btnIniciarSesion_Click"/><br>
                    <a href="#">Registresé Aquí</a>
                </div>
            </div>
        </section>
        <section>
            <div class="col-xs-10 col-md-7 col-center text-center">
                <h2>Instituto Tecnológico de Costa Rica </h2>
                <h4> Copyright © 2015 Tech Forward All Rights Reserved </h4>
            </div>
        </section>
    </div>
    <script type="text/javascript">
        function usuarioInvalido() {
            bootbox.dialog({
                closeButton: true,
                title: "Usuario Inválido: Los datos ingresados son incorrectos",
                message: " ",
                buttons: {
                    success: {
                        label: "Aceptar",
                        className: "btn-default"
                    }
                }
            });
        }

    </script>
</asp:Content>
