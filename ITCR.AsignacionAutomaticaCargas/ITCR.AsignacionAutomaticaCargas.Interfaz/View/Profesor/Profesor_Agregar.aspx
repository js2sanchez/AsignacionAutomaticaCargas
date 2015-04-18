<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Profesor_Agregar.aspx.cs" Inherits="ITCR.AsignacionAutomaticaCargas.Interfaz.View.Profesor.Profesor_Agregar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="multipage">
        <section class="form-width">
            <p class="title1">Registrar profesor</p>
            <br />
            <p class="title2">1. Datos generales </p>
            <div class="section-form">
                <div class="container">
                    <div class="row row-centered">
                        <div class="col-xs-6 col-centered col-min">
                            <asp:TextBox ID="txtCedula" runat="server" class="form-control" MaxLength="9" placeholder="Cédula de identidad" ToolTip="Ejemplo: 107258741"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvCedula" runat="server" ControlToValidate="txtCedula"
                                class="validation" ValidationGroup="vgRegistrarProfesor">* Dato requerido</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="regCedula" runat="server" ControlToValidate="txtCedula"
                                ValidationExpression="([0-9]){9}"
                                class="validation" ValidationGroup="vgRegistrarProfesor">* Formato inválido</asp:RegularExpressionValidator>
                        </div>
                        <div class="col-xs-6 col-centered col-min">
                            <asp:TextBox ID="txtNombre" runat="server" class="form-control" MaxLength="40" placeholder="Nombre" ToolTip="Ejemplo: Paulina"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtNombre"
                                class="validation" ValidationGroup="vgRegistrarProfesor">* Dato requerido</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revNombre" runat="server" ControlToValidate="txtNombre"
                                ValidationExpression="([a-zA-ZÀ-ÿ])*"
                                class="validation" ValidationGroup="vgRegistrarProfesor">* Formato inválido</asp:RegularExpressionValidator>
                        </div>
                    </div>
                    <br />
                    <div class="row row-centered">
                        <div class="col-xs-6 col-centered col-min">
                            <asp:TextBox ID="txtPrimerApellido" runat="server" class="form-control" MaxLength="40" placeholder="Primer apellido" ToolTip="Ejemplo: Montero"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvPrimerApellido" runat="server" ControlToValidate="txtPrimerApellido"
                                class="validation" ValidationGroup="vgRegistrarProfesor">* Dato requerido</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revPrimerApellido" runat="server" ControlToValidate="txtPrimerApellido"
                                ValidationExpression="([a-zA-ZÀ-ÿ])*"
                                class="validation" ValidationGroup="vgRegistrarProfesor">* Formato inválido</asp:RegularExpressionValidator>
                        </div>
                        <div class="col-xs-6 col-centered col-min">
                            <asp:TextBox ID="txtSegundoApellido" runat="server" class="form-control" MaxLength="40" placeholder="Segundo apellido" ToolTip="Ejemplo: Flores"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvSegundoApellido" runat="server" ControlToValidate="txtSegundoApellido"
                                class="validation" ValidationGroup="vgRegistrarProfesor">* Dato requerido</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revSegundoApellido" runat="server" ControlToValidate="txtSegundoApellido"
                                ValidationExpression="([a-zA-ZÀ-ÿ])*"
                                class="validation" ValidationGroup="vgRegistrarProfesor">* Formato inválido</asp:RegularExpressionValidator>
                        </div>
                    </div>
                </div>
            </div>
            <p class="title2">2. Datos de contacto </p>
            <div class="section-form">
                <div class="container">
                    <div class="row row-centered">
                        <div class="col-xs-6 col-centered col-min">
                            <asp:TextBox ID="txtTelefono" runat="server" class="form-control" MaxLength="8" placeholder="Telefono" ToolTip="Ejemplo: 25514010"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvTelefono" runat="server" ControlToValidate="txtTelefono"
                                class="validation" ValidationGroup="vgRegistrarProfesor">* Dato requerido</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revTelefono" runat="server" ControlToValidate="txtTelefono"
                                ValidationExpression="([0-9]){8}"
                                class="validation" ValidationGroup="vgRegistrarProfesor">* Formato inválido</asp:RegularExpressionValidator>
                        </div>
                        <div class="col-xs-6 col-centered col-min">
                            <asp:TextBox ID="txtCorreoElectronico" runat="server" class="form-control" MaxLength="80" placeholder="Correo electrónico" ToolTip="Ejemplo: profesor@itcr.ac.cr"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvCorreoElectronico" runat="server" ControlToValidate="txtCorreoElectronico"
                                class="validation" ValidationGroup="vgRegistrarProfesor">* Dato requerido</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revCorreoElectronico" runat="server" ControlToValidate="txtCorreoElectronico"
                                ValidationExpression=".+@itcr.ac.cr"
                                class="validation" ValidationGroup="vgRegistrarProfesor">* Formato inválido</asp:RegularExpressionValidator>
                        </div>
                    </div>
                    <br />
                    <div class="row row-centered">
                        <div class="col-xs-6 col-centered col-min">
                            <asp:TextBox ID="txtDireccion" runat="server" class="form-control" MaxLength="40" placeholder="*Dirección" ToolTip="Ejemplo: Cartago, Cartago Oriental, Los Ángeles,  500 metros Norte de la Basílica de los Ángeles"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="revDireccion" runat="server" ControlToValidate="txtDireccion"
                                ValidationExpression="([a-zA-ZÀ-ÿ0-9 ])*"
                                class="validation" ValidationGroup="vgRegistrarProfesor">* Formato inválido</asp:RegularExpressionValidator>
                        </div>
                        <div class="col-xs-6 col-centered col-min">
                        </div>
                    </div>
                </div>
            </div>
            <p class="title2">3. Datos laborales </p>
            <div class="section-form">
                <div class="container">
                    <div class="row row-centered">
                        <div class="col-xs-6 col-centered col-min">
                            <asp:DropDownList ID="drpDepartamento" runat="server"></asp:DropDownList>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtTelefono"
                                ValidationExpression="([0-9]){8}"
                                class="validation" ValidationGroup="vgRegistrarProfesor">* Formato inválido</asp:RegularExpressionValidator>
                        </div>
                        <div class="col-xs-6 col-centered col-min">
                            <asp:TextBox ID="TextBox2" runat="server" class="form-control" MaxLength="80" placeholder="Correo electrónico" ToolTip="Ejemplo: profesor@itcr.ac.cr"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtCorreoElectronico"
                                class="validation" ValidationGroup="vgRegistrarProfesor">* Dato requerido</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtCorreoElectronico"
                                ValidationExpression=".+@itcr.ac.cr"
                                class="validation" ValidationGroup="vgRegistrarProfesor">* Formato inválido</asp:RegularExpressionValidator>
                        </div>
                    </div>
                    <br />
                    <div class="row row-centered">
                        <div class="col-xs-6 col-centered col-min">
                            <asp:TextBox ID="TextBox3" runat="server" class="form-control" MaxLength="40" placeholder="*Dirección" ToolTip="Ejemplo: Cartago, Cartago Oriental, Los Ángeles,  500 metros Norte de la Basílica de los Ángeles"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtDireccion"
                                ValidationExpression="([a-zA-ZÀ-ÿ0-9 ])*"
                                class="validation" ValidationGroup="vgRegistrarProfesor">* Formato inválido</asp:RegularExpressionValidator>
                        </div>
                        <div class="col-xs-6 col-centered col-min">
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
