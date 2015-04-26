<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"  CodeBehind="Agregar_Administrador.aspx.cs" Inherits="ITCR.AsignacionAutomaticaCargas.Interfaz.View.Administrador.Agregar_Administrador" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="multipage">
        <section class="form-width">
            <p class="title1">Registrar Administrador</p>
            <br />
            <p class="title2">1. Datos generales </p>
            <div class="section-form">
                <div class="container">
                    <div class="row row-centered">
                        <div class="col-xs-6 col-centered col-min">
                            <asp:TextBox ID="txtCedula" runat="server" class="form-control" MaxLength="9" placeholder="Cédula de identidad" ToolTip="Ejemplo: 107258741"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvCedula" runat="server" ControlToValidate="txtCedula"
                                class="validation" ValidationGroup="vgRegistrarAdministrador">* Dato requerido</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="regCedula" runat="server" ControlToValidate="txtCedula"
                                ValidationExpression="([0-9]){9}"
                                class="validation" ValidationGroup="vgRegistrarAdministrador">* Formato inválido</asp:RegularExpressionValidator>
                        </div>
                        <div class="col-xs-6 col-centered col-min">
                            <asp:TextBox ID="txtNombre" runat="server" class="form-control" MaxLength="40" placeholder="Nombre" ToolTip="Ejemplo: Paulina"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtNombre"
                                class="validation" ValidationGroup="vgRegistrarAdministrador">* Dato requerido</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revNombre" runat="server" ControlToValidate="txtNombre"
                                ValidationExpression="([a-zA-ZÀ-ÿ])*"
                                class="validation" ValidationGroup="vgRegistrarAdministrador">* Formato inválido</asp:RegularExpressionValidator>
                        </div>
                    </div>
                    <div class="row row-centered">
                        <div class="col-xs-6 col-centered col-min">
                            <asp:TextBox ID="txtPrimerApellido" runat="server" class="form-control" MaxLength="40" placeholder="Primer apellido" ToolTip="Ejemplo: Montero"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvPrimerApellido" runat="server" ControlToValidate="txtPrimerApellido"
                                class="validation" ValidationGroup="vgRegistrarAdministrador">* Dato requerido</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revPrimerApellido" runat="server" ControlToValidate="txtPrimerApellido"
                                ValidationExpression="([a-zA-ZÀ-ÿ])*"
                                class="validation" ValidationGroup="vgRegistrarAdministrador">* Formato inválido</asp:RegularExpressionValidator>
                        </div>
                        <div class="col-xs-6 col-centered col-min">
                            <asp:TextBox ID="txtSegundoApellido" runat="server" class="form-control" MaxLength="40" placeholder="Segundo apellido" ToolTip="Ejemplo: Flores"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvSegundoApellido" runat="server" ControlToValidate="txtSegundoApellido"
                                class="validation" ValidationGroup="vgRegistrarAdministrador">* Dato requerido</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revSegundoApellido" runat="server" ControlToValidate="txtSegundoApellido"
                                ValidationExpression="([a-zA-ZÀ-ÿ])*"
                                class="validation" ValidationGroup="vgRegistrarAdministrador">* Formato inválido</asp:RegularExpressionValidator>
                        </div>
                    </div>
                </div>
            </div>
         
            <p class="title2">2. Datos de autenticación </p>
            <div class="section-form">
                <div class="container">
                    <div class="row row-centered">
                        <div class="col-xs-6 col-centered col-min">
                            <asp:TextBox ID="txtUsuario" runat="server" class="form-control" MaxLength="30" placeholder="Nombre de usuario" ToolTip="[IMPORTANTE] Debe tener una extensión entre 5 y 30 caracteres y contener únicamente letras, números y los símbolos - _ "></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvUsuario" runat="server" ControlToValidate="txtUsuario"
                                class="validation" ValidationGroup="vgRegistrarAdministrador">* Dato requerido</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="rev" runat="server" ControlToValidate="txtUsuario"
                                ValidationExpression="(([0-9A-Za-z]|-|_){5,30})"
                                class="validation" ValidationGroup="vgRegistrarAdministrador">* Formato inválido</asp:RegularExpressionValidator>
                        </div>
                        <div class="col-xs-6 col-centered col-min">
                            <asp:TextBox ID="txtFraseContraseña" runat="server" class="form-control" MaxLength="50" placeholder="*Frase para recordar contraseña" ToolTip="Ejemplo: Nombre de mi primera mascota"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="revFraseContraseña" runat="server" ControlToValidate="txtFraseContraseña"
                                ValidationExpression="([a-zA-ZÀ-ÿ ])*"
                                class="validation" ValidationGroup="vgRegistrarAdministrador">* Formato inválido</asp:RegularExpressionValidator>
                        </div>
                    </div>
                    <div class="row row-centered">
                        <div class="col-xs-6 col-centered col-min">
                            <asp:TextBox ID="txtContraseña" runat="server" class="form-control" MaxLength="50" TextMode="Password" placeholder="Contraseña" ToolTip="[IMPORTANTE] La contraseña debe tener mínimo 8 caracteres y contener únicamente letras y números."></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvContraseña" runat="server" ControlToValidate="txtContraseña"
                                class="validation" ValidationGroup="vgRegistrarAdministrador">* Dato requerido</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revContraseña" runat="server" ControlToValidate="txtContraseña"
                                ValidationExpression="[0-9A-Za-z]{8,50}"
                                class="validation" ValidationGroup="vgRegistrarAdministrador">* Formato inválido</asp:RegularExpressionValidator>
                        </div>
                        <div class="col-xs-6 col-centered col-min">
                            <asp:TextBox ID="txtConfirmacionContraseña" runat="server" class="form-control" MaxLength="50" TextMode="Password" placeholder="Confirmación de contraseña" ToolTip="[IMPORTANTE] La contraseña debe tener mínimo 8 caracteres y contener únicamente letras y números."></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvConfirmacionContraseña" runat="server" ControlToValidate="txtConfirmacionContraseña"
                                class="validation" ValidationGroup="vgRegistrarAdministrador">* Dato requerido</asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="cvConfirmacionContraseña" runat="server" ControlToCompare="txtContraseña"
                                ControlToValidate="txtConfirmacionContraseña"
                                class="validation" Operator="Equal" ValidationGroup="vgRegistrarAdministrador">* Contraseña no coincide</asp:CompareValidator>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row row-centered" style="margin-top: 20px;">
                <asp:Button ID="btnRegistrar" runat="server" class="btn btn-default" Text="Registrar" OnClick="btnRegistrar_Click" />
            </div>
        </section>
    </div>


</asp:Content>
