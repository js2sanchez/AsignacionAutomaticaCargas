<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Agregar_FranjaHoraria.aspx.cs" Inherits="ITCR.AsignacionAutomaticaCargas.Interfaz.View.Franja_Horaria.Agregar_FranjaHoraria" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="multipage">
        <section class="form-width">
            <p class="title1">Agregar franja horaria</p>
            <div class="section-form">
                <div class="container checkboxes">
                    <div class="row row-centered">
                        <div class="col-xs-6 col-centered col-min">
                            <asp:TextBox ID="txtCodigo" runat="server" class="form-control" MaxLength="9" placeholder="Código" ToolTip="Ejemplo:F01"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvCodigo" runat="server" ControlToValidate="txtCodigo"
                                class="validation" ValidationGroup="vgRegistrarFranjaHoraria">* Dato requerido</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="regCodigo" runat="server" ControlToValidate="txtCodigo"
                                ValidationExpression="([0-9]){3}"
                                class="validation" ValidationGroup="vgRegistrarFranjaHoraria">* Formato inválido</asp:RegularExpressionValidator>
                        </div>
                        <div class="col-xs-6 col-centered col-min">
                             <asp:TextBox ID="txtHoraInicio" runat="server" class="form-control" MaxLength="9" placeholder="Hora Inicio" ToolTip="Ejemplo:7:30"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="efHoraInicio" runat="server" ControlToValidate="txtHoraInicio"
                                class="validation" ValidationGroup="vgRegistrarFranjaHoraria">* Dato requerido</asp:RequiredFieldValidator>

                        </div>
                    </div>
                    <div class="row row-centered">
                        <div class="col-xs-6 col-centered col-min">
                             <asp:TextBox ID="txtHoraFinal" runat="server" class="form-control" MaxLength="9" placeholder="Hora Final" ToolTip="Ejemplo:9:20"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="rvfHoraFinal" runat="server" ControlToValidate="txtHoraFinal"
                                class="validation" ValidationGroup="vgRegistrarFranjaHoraria">* Dato requerido</asp:RequiredFieldValidator>
                        </div>
                        <div class="col-xs-6 col-centered col-min">
                        </div>
                    </div>
                    <div class="row row-centered">
                        <div class="col-xs-6 col-centered col-min">
                           <asp:CheckBox id="cbLunes"  AutoPostBack="False" Text="Lunes" TextAlign="Right" Checked="False"  runat="server"/>
                        </div>
                        <div class="col-xs-6 col-centered col-min">
                             <asp:CheckBox id="cbMartes"  AutoPostBack="False" Text="Martes" TextAlign="Right" Checked="False"  runat="server"/>
                        </div>
                    </div>
                    <div class="row row-centered">
                        <div class="col-xs-6 col-centered col-min">
                            <asp:CheckBox id="cbMiercoles"  AutoPostBack="False" Text="Miercoles" TextAlign="Right" Checked="False"  runat="server"/>
                        </div>
                        <div class="col-xs-6 col-centered col-min">
                             <asp:CheckBox id="cbJueves"  AutoPostBack="False" Text="Jueves" TextAlign="Right" Checked="False"  runat="server"/>
                        </div>
                    </div>
                    <div class="row row-centered">
                        <div class="col-xs-6 col-centered col-min">
                           <asp:CheckBox id="cbViernes"  AutoPostBack="False" Text="Viernes" TextAlign="Right" Checked="False"  runat="server"/>
                        </div>
                        <div class="col-xs-6 col-centered col-min">
                             <asp:CheckBox id="cbSabado"  AutoPostBack="False" Text="Sabado" TextAlign="Right" Checked="False"  runat="server"/>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row row-centered" style="margin-top: 20px;">
                <asp:Button ID="btnAgregar" runat="server" class="btn btn-default" Text="Agregar" OnClick="btnAgregar_Click" />
            </div>
        </section>
    </div>
     <script  type="text/javascript">
        function agregar() {
            bootbox.dialog({
                closeButton: true,
                title: " Se agregó exitosamente ",
                message: " ",
                buttons: {
                    success: {
                        label: "Aceptar",
                        className: "btn-default",
                        callback: function () {
                            location.href = "/View/Fraja_Horaria/Consultar_Franja_Horaria.aspx";
                        }
                    }
                }
            });
            //Limpia los campos del form
            $(".section-form").find('.form-control').val('');
        }
    </script>
</asp:Content>
