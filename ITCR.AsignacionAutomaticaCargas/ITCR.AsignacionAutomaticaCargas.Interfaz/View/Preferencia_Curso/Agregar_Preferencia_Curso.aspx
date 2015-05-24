<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Agregar_Preferencia_Curso.aspx.cs" Inherits="ITCR.AsignacionAutomaticaCargas.Interfaz.View.Preferencia_Curso.Agregar_Preferencia_Curso" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="multipage">
        <section class="form-width">
            <h3>Agregar preferencia de curso</h3>
            <div class="section-form">
                <div class="container">
                    <div class="row row-centered">
                        <div class="col-xs-6 col-centered col-min">
                            <asp:DropDownList ID="drpPeriodo" runat="server" class="form-control">
                                <asp:ListItem Text="Periodo" Value="0" Selected="True" />
                            </asp:DropDownList>
                            <asp:CompareValidator ID="cvPeriodo" runat="server" ValueToCompare="0"
                                ControlToValidate="drpPeriodo"
                                class="validation" Operator="NotEqual" ValidationGroup="vgAgregarPreferenciaCurso">* Seleccione una opción válida</asp:CompareValidator>
                        </div>
                        <div class="col-xs-6 col-centered col-min">
                            <asp:DropDownList ID="drpSede" runat="server" class="form-control">
                                <asp:ListItem Text="Sede" Value="0" Selected="True" />
                            </asp:DropDownList>
                            <asp:CompareValidator ID="cvSede" runat="server" ValueToCompare="0"
                                ControlToValidate="drpSede"
                                class="validation" Operator="NotEqual" ValidationGroup="vgAgregarPreferenciaCurso">* Seleccione una opción válida</asp:CompareValidator>
                        </div>
                    </div>
                    <div class="row row-centered">
                        <div class="col-xs-6 col-centered col-min">
                            <asp:DropDownList ID="drpPrioridad" runat="server" class="form-control">
                                <asp:ListItem Text="Prioridad" Value="0" Selected="True" />
                            </asp:DropDownList>
                            <asp:CompareValidator ID="cvPrioridad" runat="server" ValueToCompare="0"
                                ControlToValidate="drpPrioridad"
                                class="validation" Operator="NotEqual" ValidationGroup="vgAgregarPreferenciaCurso">* Seleccione una opción válida</asp:CompareValidator>
                        </div>
                        <div class="col-xs-6 col-centered col-min">
                            <asp:DropDownList ID="drpCurso" runat="server" class="form-control">
                                <asp:ListItem Text="Curso" Value="0" Selected="True" />
                            </asp:DropDownList>
                            <asp:CompareValidator ID="cvCurso" runat="server" ValueToCompare="0"
                                ControlToValidate="drpCurso"
                                class="validation" Operator="NotEqual" ValidationGroup="vgAgregarPreferenciaCurso">* Seleccione una opción válida</asp:CompareValidator>
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
                            location.href = "/View/Preferencia_Curso/Consultar_Preferencia_Curso.aspx";
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
