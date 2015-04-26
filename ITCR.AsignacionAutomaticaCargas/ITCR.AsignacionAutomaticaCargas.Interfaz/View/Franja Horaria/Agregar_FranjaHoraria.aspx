<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Agregar_FranjaHoraria.aspx.cs" Inherits="ITCR.AsignacionAutomaticaCargas.Interfaz.View.Franja_Horaria.Agregar_FranjaHoraria" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="multipage">
        <section class="form-width">
            <p class="title1">Agregar franja horaria</p>
            <div class="section-form">
                <div class="container">
                    <div class="row row-centered">
                        <div class="col-xs-6 col-centered col-min">
                            <asp:TextBox ID="txtCodigo" runat="server" class="form-control" MaxLength="9" placeholder="Código" ToolTip="Ejemplo:F01"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvCodigo" runat="server" ControlToValidate="txtCodigo"
                                class="validation" ValidationGroup="vgRegistrarFranjaHoraria">* Dato requerido</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="regCodigo" runat="server" ControlToValidate="txtCodigo"
                                ValidationExpression="([0-9]){9}"
                                class="validation" ValidationGroup="vgRegistrarFranjaHoraria">* Formato inválido</asp:RegularExpressionValidator>
                        </div>
                        </div>
                        <div class="row row-centered">
                            <div class="col-xs-6 col-centered col-min">
                             <asp:TextBox ID="txtHoraInicio" runat="server" class="form-control" MaxLength="9" placeholder="Hora Inicio" ToolTip="Ejemplo:7:30"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="efHoraInicio" runat="server" ControlToValidate="txtHoraInicio"
                                class="validation" ValidationGroup="vgRegistrarFranjaHoraria">* Dato requerido</asp:RequiredFieldValidator>
                              <asp:RegularExpressionValidator ID="regFranjaHoraria" runat="server" ControlToValidate="txtHoraInicio"
                                ValidationExpression="([0-9]){9}"
                                class="validation" ValidationGroup="vgRegistrarFranjaHoraria">* Formato inválido</asp:RegularExpressionValidator>
                        </div>
                              <div class="col-xs-6 col-centered col-min">
                             <asp:TextBox ID="txtHoraFinal" runat="server" class="form-control" MaxLength="9" placeholder="Hora Inicio" ToolTip="Ejemplo:9:20"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="rvfHoraFinal" runat="server" ControlToValidate="txtHoraFinal"
                                class="validation" ValidationGroup="vgRegistrarFranjaHoraria">* Dato requerido</asp:RequiredFieldValidator>
                              <asp:RegularExpressionValidator ID="regHoraFinal" runat="server" ControlToValidate="txtHoraFinal"
                                ValidationExpression="([0-9]){9}"
                                class="validation" ValidationGroup="vgRegistrarFranjaHoraria">* Formato inválido</asp:RegularExpressionValidator>
                        </div>
                        </div>
                            <div class="row row-centered">
                            <div class="col-xs-6 col-centered col-min">
                           <asp:CheckBox id="cbLunes"  AutoPostBack="False" Text="Lunes" TextAlign="Left" Checked="False"  runat="server"/>
                        </div>
                              <div class="col-xs-6 col-centered col-min">
                             <asp:CheckBox id="cbMartes"  AutoPostBack="False" Text="Martes" TextAlign="Left" Checked="False"  runat="server"/>
                        </div>
                        </div>

                    </div>
                </div>

            <div class="row row-centered" style="margin-top: 20px;">
                <asp:Button ID="btnAgregar" runat="server" class="btn btn-default" Text="Agregar" OnClick="btnAgregar_Click" />
            </div>
        </section>
    </div>
</asp:Content>
