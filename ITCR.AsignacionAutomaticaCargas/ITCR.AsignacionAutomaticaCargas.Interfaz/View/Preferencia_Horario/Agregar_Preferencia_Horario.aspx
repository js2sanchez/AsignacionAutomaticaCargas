<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Agregar_Preferencia_Horario.aspx.cs" Inherits="ITCR.AsignacionAutomaticaCargas.Interfaz.View.Preferencia_Horaria.Agregar_Preferencia_Horaria" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="multipage">
        <section class="form-width">
            <h3>Agregar Preferencia de Horario</h3>
             <div class="section-form">
                <div class="container">
                    <div class="row row-centered">
                        <div class="col-xs-6 col-centered col-min">
                            <asp:DropDownList ID="drpPeriodo" runat="server" class="form-control">
                                <asp:ListItem Text="Periodo" Value="0" Selected="True" />
                            </asp:DropDownList>
                            <asp:CompareValidator ID="cvPeriodo" runat="server" ValueToCompare="0"
                                ControlToValidate="drpPeriodo"
                                class="validation" Operator="NotEqual" ValidationGroup="vgAgregarPreferenciaHorario">* Seleccione una opción válida</asp:CompareValidator>
                        </div>
                        <div class="col-xs-6 col-centered col-min">
                            <asp:DropDownList ID="drpHorario" runat="server" class="form-control">
                                <asp:ListItem Text="Horario" Value="0" Selected="True"/>
                            </asp:DropDownList>
                            <asp:CompareValidator ID="cvHorario" runat="server" ValueToCompare="0"
                                ControlToValidate="drpHorario"
                                class="validation" Operator="NotEqual" ValidationGroup="vgAgregarPreferenciaHorario">* Seleccione una opción válida</asp:CompareValidator>
                        </div>
                    </div>
                    <div class="row row-centered">
                        <asp:Button ID="btnAgregar" runat="server" class="btn btn-default" Text="Agregar" OnClick="btnAgregar_Click" />
                    </div>
                </div>
            </div>
        </section>
    </div>
      <script type="text/javascript">
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
                            location.href = "/View/Preferencia_Horario/Consultar_Preferencia_Horario.aspx";
                        }
                    }
                }
            });
            //Limpia los campos del form
            $(".section-form").find('.form-control').val('');
        }
        function error() {
            bootbox.dialog({
                closeButton: true,
                title: " Se produjo un error. Intente de nuevo. ",
                message: " ",
                buttons: {
                    success: {
                        label: "Aceptar",
                        className: "btn-default",
                        callback: function () {
  
                        }
                    }
                }
            });
            //Limpia los campos del form
            $(".section-form").find('.form-control').val('');
        }
    </script>
</asp:Content>
